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
-- Module      : Network.AWS.CodeCommit.CreateApprovalRuleTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a template for approval rules that can then be associated with one or more repositories in your AWS account. When you associate a template with a repository, AWS CodeCommit creates an approval rule that matches the conditions of the template for all pull requests that meet the conditions of the template. For more information, see 'AssociateApprovalRuleTemplateWithRepository' .
module Network.AWS.CodeCommit.CreateApprovalRuleTemplate
  ( -- * Creating a Request
    createApprovalRuleTemplate,
    CreateApprovalRuleTemplate,

    -- * Request Lenses
    cartApprovalRuleTemplateDescription,
    cartApprovalRuleTemplateName,
    cartApprovalRuleTemplateContent,

    -- * Destructuring the Response
    createApprovalRuleTemplateResponse,
    CreateApprovalRuleTemplateResponse,

    -- * Response Lenses
    cartrrsResponseStatus,
    cartrrsApprovalRuleTemplate,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createApprovalRuleTemplate' smart constructor.
data CreateApprovalRuleTemplate = CreateApprovalRuleTemplate'
  { _cartApprovalRuleTemplateDescription ::
      !(Maybe Text),
    _cartApprovalRuleTemplateName ::
      !Text,
    _cartApprovalRuleTemplateContent ::
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

-- | Creates a value of 'CreateApprovalRuleTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cartApprovalRuleTemplateDescription' - The description of the approval rule template. Consider providing a description that explains what this template does and when it might be appropriate to associate it with repositories.
--
-- * 'cartApprovalRuleTemplateName' - The name of the approval rule template. Provide descriptive names, because this name is applied to the approval rules created automatically in associated repositories.
--
-- * 'cartApprovalRuleTemplateContent' - The content of the approval rule that is created on pull requests in associated repositories. If you specify one or more destination references (branches), approval rules are created in an associated repository only if their destination references (branches) match those specified in the template.
createApprovalRuleTemplate ::
  -- | 'cartApprovalRuleTemplateName'
  Text ->
  -- | 'cartApprovalRuleTemplateContent'
  Text ->
  CreateApprovalRuleTemplate
createApprovalRuleTemplate
  pApprovalRuleTemplateName_
  pApprovalRuleTemplateContent_ =
    CreateApprovalRuleTemplate'
      { _cartApprovalRuleTemplateDescription =
          Nothing,
        _cartApprovalRuleTemplateName =
          pApprovalRuleTemplateName_,
        _cartApprovalRuleTemplateContent =
          pApprovalRuleTemplateContent_
      }

-- | The description of the approval rule template. Consider providing a description that explains what this template does and when it might be appropriate to associate it with repositories.
cartApprovalRuleTemplateDescription :: Lens' CreateApprovalRuleTemplate (Maybe Text)
cartApprovalRuleTemplateDescription = lens _cartApprovalRuleTemplateDescription (\s a -> s {_cartApprovalRuleTemplateDescription = a})

-- | The name of the approval rule template. Provide descriptive names, because this name is applied to the approval rules created automatically in associated repositories.
cartApprovalRuleTemplateName :: Lens' CreateApprovalRuleTemplate Text
cartApprovalRuleTemplateName = lens _cartApprovalRuleTemplateName (\s a -> s {_cartApprovalRuleTemplateName = a})

-- | The content of the approval rule that is created on pull requests in associated repositories. If you specify one or more destination references (branches), approval rules are created in an associated repository only if their destination references (branches) match those specified in the template.
cartApprovalRuleTemplateContent :: Lens' CreateApprovalRuleTemplate Text
cartApprovalRuleTemplateContent = lens _cartApprovalRuleTemplateContent (\s a -> s {_cartApprovalRuleTemplateContent = a})

instance AWSRequest CreateApprovalRuleTemplate where
  type
    Rs CreateApprovalRuleTemplate =
      CreateApprovalRuleTemplateResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          CreateApprovalRuleTemplateResponse'
            <$> (pure (fromEnum s))
            <*> (x .:> "approvalRuleTemplate")
      )

instance Hashable CreateApprovalRuleTemplate

instance NFData CreateApprovalRuleTemplate

instance ToHeaders CreateApprovalRuleTemplate where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.CreateApprovalRuleTemplate" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateApprovalRuleTemplate where
  toJSON CreateApprovalRuleTemplate' {..} =
    object
      ( catMaybes
          [ ("approvalRuleTemplateDescription" .=)
              <$> _cartApprovalRuleTemplateDescription,
            Just
              ( "approvalRuleTemplateName"
                  .= _cartApprovalRuleTemplateName
              ),
            Just
              ( "approvalRuleTemplateContent"
                  .= _cartApprovalRuleTemplateContent
              )
          ]
      )

instance ToPath CreateApprovalRuleTemplate where
  toPath = const "/"

instance ToQuery CreateApprovalRuleTemplate where
  toQuery = const mempty

-- | /See:/ 'createApprovalRuleTemplateResponse' smart constructor.
data CreateApprovalRuleTemplateResponse = CreateApprovalRuleTemplateResponse'
  { _cartrrsResponseStatus ::
      !Int,
    _cartrrsApprovalRuleTemplate ::
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

-- | Creates a value of 'CreateApprovalRuleTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cartrrsResponseStatus' - -- | The response status code.
--
-- * 'cartrrsApprovalRuleTemplate' - The content and structure of the created approval rule template.
createApprovalRuleTemplateResponse ::
  -- | 'cartrrsResponseStatus'
  Int ->
  -- | 'cartrrsApprovalRuleTemplate'
  ApprovalRuleTemplate ->
  CreateApprovalRuleTemplateResponse
createApprovalRuleTemplateResponse
  pResponseStatus_
  pApprovalRuleTemplate_ =
    CreateApprovalRuleTemplateResponse'
      { _cartrrsResponseStatus =
          pResponseStatus_,
        _cartrrsApprovalRuleTemplate =
          pApprovalRuleTemplate_
      }

-- | -- | The response status code.
cartrrsResponseStatus :: Lens' CreateApprovalRuleTemplateResponse Int
cartrrsResponseStatus = lens _cartrrsResponseStatus (\s a -> s {_cartrrsResponseStatus = a})

-- | The content and structure of the created approval rule template.
cartrrsApprovalRuleTemplate :: Lens' CreateApprovalRuleTemplateResponse ApprovalRuleTemplate
cartrrsApprovalRuleTemplate = lens _cartrrsApprovalRuleTemplate (\s a -> s {_cartrrsApprovalRuleTemplate = a})

instance NFData CreateApprovalRuleTemplateResponse
