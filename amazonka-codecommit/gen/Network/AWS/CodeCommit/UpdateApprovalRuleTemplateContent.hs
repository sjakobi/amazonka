{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.UpdateApprovalRuleTemplateContent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the content of an approval rule template. You can change the number of required approvals, the membership of the approval rule, and whether an approval pool is defined.
module Network.AWS.CodeCommit.UpdateApprovalRuleTemplateContent
  ( -- * Creating a Request
    updateApprovalRuleTemplateContent,
    UpdateApprovalRuleTemplateContent,

    -- * Request Lenses
    uartcExistingRuleContentSha256,
    uartcApprovalRuleTemplateName,
    uartcNewRuleContent,

    -- * Destructuring the Response
    updateApprovalRuleTemplateContentResponse,
    UpdateApprovalRuleTemplateContentResponse,

    -- * Response Lenses
    uartcrrsResponseStatus,
    uartcrrsApprovalRuleTemplate,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateApprovalRuleTemplateContent' smart constructor.
data UpdateApprovalRuleTemplateContent = UpdateApprovalRuleTemplateContent'
  { _uartcExistingRuleContentSha256 ::
      !( Maybe
           Text
       ),
    _uartcApprovalRuleTemplateName ::
      !Text,
    _uartcNewRuleContent ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateApprovalRuleTemplateContent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uartcExistingRuleContentSha256' - The SHA-256 hash signature for the content of the approval rule. You can retrieve this information by using 'GetPullRequest' .
--
-- * 'uartcApprovalRuleTemplateName' - The name of the approval rule template where you want to update the content of the rule.
--
-- * 'uartcNewRuleContent' - The content that replaces the existing content of the rule. Content statements must be complete. You cannot provide only the changes.
updateApprovalRuleTemplateContent ::
  -- | 'uartcApprovalRuleTemplateName'
  Text ->
  -- | 'uartcNewRuleContent'
  Text ->
  UpdateApprovalRuleTemplateContent
updateApprovalRuleTemplateContent
  pApprovalRuleTemplateName_
  pNewRuleContent_ =
    UpdateApprovalRuleTemplateContent'
      { _uartcExistingRuleContentSha256 =
          Nothing,
        _uartcApprovalRuleTemplateName =
          pApprovalRuleTemplateName_,
        _uartcNewRuleContent = pNewRuleContent_
      }

-- | The SHA-256 hash signature for the content of the approval rule. You can retrieve this information by using 'GetPullRequest' .
uartcExistingRuleContentSha256 :: Lens' UpdateApprovalRuleTemplateContent (Maybe Text)
uartcExistingRuleContentSha256 = lens _uartcExistingRuleContentSha256 (\s a -> s {_uartcExistingRuleContentSha256 = a})

-- | The name of the approval rule template where you want to update the content of the rule.
uartcApprovalRuleTemplateName :: Lens' UpdateApprovalRuleTemplateContent Text
uartcApprovalRuleTemplateName = lens _uartcApprovalRuleTemplateName (\s a -> s {_uartcApprovalRuleTemplateName = a})

-- | The content that replaces the existing content of the rule. Content statements must be complete. You cannot provide only the changes.
uartcNewRuleContent :: Lens' UpdateApprovalRuleTemplateContent Text
uartcNewRuleContent = lens _uartcNewRuleContent (\s a -> s {_uartcNewRuleContent = a})

instance AWSRequest UpdateApprovalRuleTemplateContent where
  type
    Rs UpdateApprovalRuleTemplateContent =
      UpdateApprovalRuleTemplateContentResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          UpdateApprovalRuleTemplateContentResponse'
            <$> (pure (fromEnum s))
            <*> (x .:> "approvalRuleTemplate")
      )

instance Hashable UpdateApprovalRuleTemplateContent

instance NFData UpdateApprovalRuleTemplateContent

instance ToHeaders UpdateApprovalRuleTemplateContent where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.UpdateApprovalRuleTemplateContent" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateApprovalRuleTemplateContent where
  toJSON UpdateApprovalRuleTemplateContent' {..} =
    object
      ( catMaybes
          [ ("existingRuleContentSha256" .=)
              <$> _uartcExistingRuleContentSha256,
            Just
              ( "approvalRuleTemplateName"
                  .= _uartcApprovalRuleTemplateName
              ),
            Just ("newRuleContent" .= _uartcNewRuleContent)
          ]
      )

instance ToPath UpdateApprovalRuleTemplateContent where
  toPath = const "/"

instance ToQuery UpdateApprovalRuleTemplateContent where
  toQuery = const mempty

-- | /See:/ 'updateApprovalRuleTemplateContentResponse' smart constructor.
data UpdateApprovalRuleTemplateContentResponse = UpdateApprovalRuleTemplateContentResponse'
  { _uartcrrsResponseStatus ::
      !Int,
    _uartcrrsApprovalRuleTemplate ::
      !ApprovalRuleTemplate
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateApprovalRuleTemplateContentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uartcrrsResponseStatus' - -- | The response status code.
--
-- * 'uartcrrsApprovalRuleTemplate' - Undocumented member.
updateApprovalRuleTemplateContentResponse ::
  -- | 'uartcrrsResponseStatus'
  Int ->
  -- | 'uartcrrsApprovalRuleTemplate'
  ApprovalRuleTemplate ->
  UpdateApprovalRuleTemplateContentResponse
updateApprovalRuleTemplateContentResponse
  pResponseStatus_
  pApprovalRuleTemplate_ =
    UpdateApprovalRuleTemplateContentResponse'
      { _uartcrrsResponseStatus =
          pResponseStatus_,
        _uartcrrsApprovalRuleTemplate =
          pApprovalRuleTemplate_
      }

-- | -- | The response status code.
uartcrrsResponseStatus :: Lens' UpdateApprovalRuleTemplateContentResponse Int
uartcrrsResponseStatus = lens _uartcrrsResponseStatus (\s a -> s {_uartcrrsResponseStatus = a})

-- | Undocumented member.
uartcrrsApprovalRuleTemplate :: Lens' UpdateApprovalRuleTemplateContentResponse ApprovalRuleTemplate
uartcrrsApprovalRuleTemplate = lens _uartcrrsApprovalRuleTemplate (\s a -> s {_uartcrrsApprovalRuleTemplate = a})

instance
  NFData
    UpdateApprovalRuleTemplateContentResponse
