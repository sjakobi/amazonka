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
-- Module      : Network.AWS.CodeCommit.BatchAssociateApprovalRuleTemplateWithRepositories
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an association between an approval rule template and one or more specified repositories.
module Network.AWS.CodeCommit.BatchAssociateApprovalRuleTemplateWithRepositories
  ( -- * Creating a Request
    batchAssociateApprovalRuleTemplateWithRepositories,
    BatchAssociateApprovalRuleTemplateWithRepositories,

    -- * Request Lenses
    baartwrApprovalRuleTemplateName,
    baartwrRepositoryNames,

    -- * Destructuring the Response
    batchAssociateApprovalRuleTemplateWithRepositoriesResponse,
    BatchAssociateApprovalRuleTemplateWithRepositoriesResponse,

    -- * Response Lenses
    baartwrrrsResponseStatus,
    baartwrrrsAssociatedRepositoryNames,
    baartwrrrsErrors,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'batchAssociateApprovalRuleTemplateWithRepositories' smart constructor.
data BatchAssociateApprovalRuleTemplateWithRepositories = BatchAssociateApprovalRuleTemplateWithRepositories'
  { _baartwrApprovalRuleTemplateName ::
      !Text,
    _baartwrRepositoryNames ::
      ![Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchAssociateApprovalRuleTemplateWithRepositories' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baartwrApprovalRuleTemplateName' - The name of the template you want to associate with one or more repositories.
--
-- * 'baartwrRepositoryNames' - The names of the repositories you want to associate with the template.
batchAssociateApprovalRuleTemplateWithRepositories ::
  -- | 'baartwrApprovalRuleTemplateName'
  Text ->
  BatchAssociateApprovalRuleTemplateWithRepositories
batchAssociateApprovalRuleTemplateWithRepositories
  pApprovalRuleTemplateName_ =
    BatchAssociateApprovalRuleTemplateWithRepositories'
      { _baartwrApprovalRuleTemplateName =
          pApprovalRuleTemplateName_,
        _baartwrRepositoryNames =
          mempty
      }

-- | The name of the template you want to associate with one or more repositories.
baartwrApprovalRuleTemplateName :: Lens' BatchAssociateApprovalRuleTemplateWithRepositories Text
baartwrApprovalRuleTemplateName = lens _baartwrApprovalRuleTemplateName (\s a -> s {_baartwrApprovalRuleTemplateName = a})

-- | The names of the repositories you want to associate with the template.
baartwrRepositoryNames :: Lens' BatchAssociateApprovalRuleTemplateWithRepositories [Text]
baartwrRepositoryNames = lens _baartwrRepositoryNames (\s a -> s {_baartwrRepositoryNames = a}) . _Coerce

instance
  AWSRequest
    BatchAssociateApprovalRuleTemplateWithRepositories
  where
  type
    Rs
      BatchAssociateApprovalRuleTemplateWithRepositories =
      BatchAssociateApprovalRuleTemplateWithRepositoriesResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          BatchAssociateApprovalRuleTemplateWithRepositoriesResponse'
            <$> (pure (fromEnum s))
              <*> (x .?> "associatedRepositoryNames" .!@ mempty)
              <*> (x .?> "errors" .!@ mempty)
      )

instance
  Hashable
    BatchAssociateApprovalRuleTemplateWithRepositories

instance
  NFData
    BatchAssociateApprovalRuleTemplateWithRepositories

instance
  ToHeaders
    BatchAssociateApprovalRuleTemplateWithRepositories
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.BatchAssociateApprovalRuleTemplateWithRepositories" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    BatchAssociateApprovalRuleTemplateWithRepositories
  where
  toJSON
    BatchAssociateApprovalRuleTemplateWithRepositories' {..} =
      object
        ( catMaybes
            [ Just
                ( "approvalRuleTemplateName"
                    .= _baartwrApprovalRuleTemplateName
                ),
              Just ("repositoryNames" .= _baartwrRepositoryNames)
            ]
        )

instance
  ToPath
    BatchAssociateApprovalRuleTemplateWithRepositories
  where
  toPath = const "/"

instance
  ToQuery
    BatchAssociateApprovalRuleTemplateWithRepositories
  where
  toQuery = const mempty

-- | /See:/ 'batchAssociateApprovalRuleTemplateWithRepositoriesResponse' smart constructor.
data BatchAssociateApprovalRuleTemplateWithRepositoriesResponse = BatchAssociateApprovalRuleTemplateWithRepositoriesResponse'
  { _baartwrrrsResponseStatus ::
      !Int,
    _baartwrrrsAssociatedRepositoryNames ::
      ![Text],
    _baartwrrrsErrors ::
      ![BatchAssociateApprovalRuleTemplateWithRepositoriesError]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchAssociateApprovalRuleTemplateWithRepositoriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baartwrrrsResponseStatus' - -- | The response status code.
--
-- * 'baartwrrrsAssociatedRepositoryNames' - A list of names of the repositories that have been associated with the template.
--
-- * 'baartwrrrsErrors' - A list of any errors that might have occurred while attempting to create the association between the template and the repositories.
batchAssociateApprovalRuleTemplateWithRepositoriesResponse ::
  -- | 'baartwrrrsResponseStatus'
  Int ->
  BatchAssociateApprovalRuleTemplateWithRepositoriesResponse
batchAssociateApprovalRuleTemplateWithRepositoriesResponse
  pResponseStatus_ =
    BatchAssociateApprovalRuleTemplateWithRepositoriesResponse'
      { _baartwrrrsResponseStatus =
          pResponseStatus_,
        _baartwrrrsAssociatedRepositoryNames =
          mempty,
        _baartwrrrsErrors =
          mempty
      }

-- | -- | The response status code.
baartwrrrsResponseStatus :: Lens' BatchAssociateApprovalRuleTemplateWithRepositoriesResponse Int
baartwrrrsResponseStatus = lens _baartwrrrsResponseStatus (\s a -> s {_baartwrrrsResponseStatus = a})

-- | A list of names of the repositories that have been associated with the template.
baartwrrrsAssociatedRepositoryNames :: Lens' BatchAssociateApprovalRuleTemplateWithRepositoriesResponse [Text]
baartwrrrsAssociatedRepositoryNames = lens _baartwrrrsAssociatedRepositoryNames (\s a -> s {_baartwrrrsAssociatedRepositoryNames = a}) . _Coerce

-- | A list of any errors that might have occurred while attempting to create the association between the template and the repositories.
baartwrrrsErrors :: Lens' BatchAssociateApprovalRuleTemplateWithRepositoriesResponse [BatchAssociateApprovalRuleTemplateWithRepositoriesError]
baartwrrrsErrors = lens _baartwrrrsErrors (\s a -> s {_baartwrrrsErrors = a}) . _Coerce

instance
  NFData
    BatchAssociateApprovalRuleTemplateWithRepositoriesResponse
