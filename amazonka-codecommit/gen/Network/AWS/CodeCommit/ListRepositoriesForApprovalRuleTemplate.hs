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
-- Module      : Network.AWS.CodeCommit.ListRepositoriesForApprovalRuleTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all repositories associated with the specified approval rule template.
module Network.AWS.CodeCommit.ListRepositoriesForApprovalRuleTemplate
  ( -- * Creating a Request
    listRepositoriesForApprovalRuleTemplate,
    ListRepositoriesForApprovalRuleTemplate,

    -- * Request Lenses
    lrfartNextToken,
    lrfartMaxResults,
    lrfartApprovalRuleTemplateName,

    -- * Destructuring the Response
    listRepositoriesForApprovalRuleTemplateResponse,
    ListRepositoriesForApprovalRuleTemplateResponse,

    -- * Response Lenses
    lrfartrrsNextToken,
    lrfartrrsRepositoryNames,
    lrfartrrsResponseStatus,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listRepositoriesForApprovalRuleTemplate' smart constructor.
data ListRepositoriesForApprovalRuleTemplate = ListRepositoriesForApprovalRuleTemplate'
  { _lrfartNextToken ::
      !( Maybe
           Text
       ),
    _lrfartMaxResults ::
      !( Maybe
           Int
       ),
    _lrfartApprovalRuleTemplateName ::
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

-- | Creates a value of 'ListRepositoriesForApprovalRuleTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrfartNextToken' - An enumeration token that, when provided in a request, returns the next batch of the results.
--
-- * 'lrfartMaxResults' - A non-zero, non-negative integer used to limit the number of returned results.
--
-- * 'lrfartApprovalRuleTemplateName' - The name of the approval rule template for which you want to list repositories that are associated with that template.
listRepositoriesForApprovalRuleTemplate ::
  -- | 'lrfartApprovalRuleTemplateName'
  Text ->
  ListRepositoriesForApprovalRuleTemplate
listRepositoriesForApprovalRuleTemplate
  pApprovalRuleTemplateName_ =
    ListRepositoriesForApprovalRuleTemplate'
      { _lrfartNextToken =
          Nothing,
        _lrfartMaxResults = Nothing,
        _lrfartApprovalRuleTemplateName =
          pApprovalRuleTemplateName_
      }

-- | An enumeration token that, when provided in a request, returns the next batch of the results.
lrfartNextToken :: Lens' ListRepositoriesForApprovalRuleTemplate (Maybe Text)
lrfartNextToken = lens _lrfartNextToken (\s a -> s {_lrfartNextToken = a})

-- | A non-zero, non-negative integer used to limit the number of returned results.
lrfartMaxResults :: Lens' ListRepositoriesForApprovalRuleTemplate (Maybe Int)
lrfartMaxResults = lens _lrfartMaxResults (\s a -> s {_lrfartMaxResults = a})

-- | The name of the approval rule template for which you want to list repositories that are associated with that template.
lrfartApprovalRuleTemplateName :: Lens' ListRepositoriesForApprovalRuleTemplate Text
lrfartApprovalRuleTemplateName = lens _lrfartApprovalRuleTemplateName (\s a -> s {_lrfartApprovalRuleTemplateName = a})

instance
  AWSRequest
    ListRepositoriesForApprovalRuleTemplate
  where
  type
    Rs ListRepositoriesForApprovalRuleTemplate =
      ListRepositoriesForApprovalRuleTemplateResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          ListRepositoriesForApprovalRuleTemplateResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "repositoryNames" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    ListRepositoriesForApprovalRuleTemplate

instance
  NFData
    ListRepositoriesForApprovalRuleTemplate

instance
  ToHeaders
    ListRepositoriesForApprovalRuleTemplate
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.ListRepositoriesForApprovalRuleTemplate" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    ListRepositoriesForApprovalRuleTemplate
  where
  toJSON ListRepositoriesForApprovalRuleTemplate' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lrfartNextToken,
            ("maxResults" .=) <$> _lrfartMaxResults,
            Just
              ( "approvalRuleTemplateName"
                  .= _lrfartApprovalRuleTemplateName
              )
          ]
      )

instance
  ToPath
    ListRepositoriesForApprovalRuleTemplate
  where
  toPath = const "/"

instance
  ToQuery
    ListRepositoriesForApprovalRuleTemplate
  where
  toQuery = const mempty

-- | /See:/ 'listRepositoriesForApprovalRuleTemplateResponse' smart constructor.
data ListRepositoriesForApprovalRuleTemplateResponse = ListRepositoriesForApprovalRuleTemplateResponse'
  { _lrfartrrsNextToken ::
      !( Maybe
           Text
       ),
    _lrfartrrsRepositoryNames ::
      !( Maybe
           [Text]
       ),
    _lrfartrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListRepositoriesForApprovalRuleTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrfartrrsNextToken' - An enumeration token that allows the operation to batch the next results of the operation.
--
-- * 'lrfartrrsRepositoryNames' - A list of repository names that are associated with the specified approval rule template.
--
-- * 'lrfartrrsResponseStatus' - -- | The response status code.
listRepositoriesForApprovalRuleTemplateResponse ::
  -- | 'lrfartrrsResponseStatus'
  Int ->
  ListRepositoriesForApprovalRuleTemplateResponse
listRepositoriesForApprovalRuleTemplateResponse
  pResponseStatus_ =
    ListRepositoriesForApprovalRuleTemplateResponse'
      { _lrfartrrsNextToken =
          Nothing,
        _lrfartrrsRepositoryNames =
          Nothing,
        _lrfartrrsResponseStatus =
          pResponseStatus_
      }

-- | An enumeration token that allows the operation to batch the next results of the operation.
lrfartrrsNextToken :: Lens' ListRepositoriesForApprovalRuleTemplateResponse (Maybe Text)
lrfartrrsNextToken = lens _lrfartrrsNextToken (\s a -> s {_lrfartrrsNextToken = a})

-- | A list of repository names that are associated with the specified approval rule template.
lrfartrrsRepositoryNames :: Lens' ListRepositoriesForApprovalRuleTemplateResponse [Text]
lrfartrrsRepositoryNames = lens _lrfartrrsRepositoryNames (\s a -> s {_lrfartrrsRepositoryNames = a}) . _Default . _Coerce

-- | -- | The response status code.
lrfartrrsResponseStatus :: Lens' ListRepositoriesForApprovalRuleTemplateResponse Int
lrfartrrsResponseStatus = lens _lrfartrrsResponseStatus (\s a -> s {_lrfartrrsResponseStatus = a})

instance
  NFData
    ListRepositoriesForApprovalRuleTemplateResponse
