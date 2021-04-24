{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.BatchDisassociateApprovalRuleTemplateFromRepositoriesError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.BatchDisassociateApprovalRuleTemplateFromRepositoriesError where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Returns information about errors in a BatchDisassociateApprovalRuleTemplateFromRepositories operation.
--
--
--
-- /See:/ 'batchDisassociateApprovalRuleTemplateFromRepositoriesError' smart constructor.
data BatchDisassociateApprovalRuleTemplateFromRepositoriesError = BatchDisassociateApprovalRuleTemplateFromRepositoriesError'
  { _bdartfreRepositoryName ::
      !( Maybe
           Text
       ),
    _bdartfreErrorMessage ::
      !( Maybe
           Text
       ),
    _bdartfreErrorCode ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchDisassociateApprovalRuleTemplateFromRepositoriesError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdartfreRepositoryName' - The name of the repository where the association with the template was not able to be removed.
--
-- * 'bdartfreErrorMessage' - An error message that provides details about why the repository name was either not found or not valid.
--
-- * 'bdartfreErrorCode' - An error code that specifies whether the repository name was not valid or not found.
batchDisassociateApprovalRuleTemplateFromRepositoriesError ::
  BatchDisassociateApprovalRuleTemplateFromRepositoriesError
batchDisassociateApprovalRuleTemplateFromRepositoriesError =
  BatchDisassociateApprovalRuleTemplateFromRepositoriesError'
    { _bdartfreRepositoryName =
        Nothing,
      _bdartfreErrorMessage =
        Nothing,
      _bdartfreErrorCode =
        Nothing
    }

-- | The name of the repository where the association with the template was not able to be removed.
bdartfreRepositoryName :: Lens' BatchDisassociateApprovalRuleTemplateFromRepositoriesError (Maybe Text)
bdartfreRepositoryName = lens _bdartfreRepositoryName (\s a -> s {_bdartfreRepositoryName = a})

-- | An error message that provides details about why the repository name was either not found or not valid.
bdartfreErrorMessage :: Lens' BatchDisassociateApprovalRuleTemplateFromRepositoriesError (Maybe Text)
bdartfreErrorMessage = lens _bdartfreErrorMessage (\s a -> s {_bdartfreErrorMessage = a})

-- | An error code that specifies whether the repository name was not valid or not found.
bdartfreErrorCode :: Lens' BatchDisassociateApprovalRuleTemplateFromRepositoriesError (Maybe Text)
bdartfreErrorCode = lens _bdartfreErrorCode (\s a -> s {_bdartfreErrorCode = a})

instance
  FromJSON
    BatchDisassociateApprovalRuleTemplateFromRepositoriesError
  where
  parseJSON =
    withObject
      "BatchDisassociateApprovalRuleTemplateFromRepositoriesError"
      ( \x ->
          BatchDisassociateApprovalRuleTemplateFromRepositoriesError'
            <$> (x .:? "repositoryName") <*> (x .:? "errorMessage")
              <*> (x .:? "errorCode")
      )

instance
  Hashable
    BatchDisassociateApprovalRuleTemplateFromRepositoriesError

instance
  NFData
    BatchDisassociateApprovalRuleTemplateFromRepositoriesError
