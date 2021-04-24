{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.GitConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.GitConfig where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies configuration details for a Git repository in your AWS account.
--
--
--
-- /See:/ 'gitConfig' smart constructor.
data GitConfig = GitConfig'
  { _gcSecretARN ::
      !(Maybe Text),
    _gcBranch :: !(Maybe Text),
    _gcRepositoryURL :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GitConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcSecretARN' - The Amazon Resource Name (ARN) of the AWS Secrets Manager secret that contains the credentials used to access the git repository. The secret must have a staging label of @AWSCURRENT@ and must be in the following format: @{"username": /UserName/ , "password": /Password/ }@
--
-- * 'gcBranch' - The default branch for the Git repository.
--
-- * 'gcRepositoryURL' - The URL where the Git repository is located.
gitConfig ::
  -- | 'gcRepositoryURL'
  Text ->
  GitConfig
gitConfig pRepositoryURL_ =
  GitConfig'
    { _gcSecretARN = Nothing,
      _gcBranch = Nothing,
      _gcRepositoryURL = pRepositoryURL_
    }

-- | The Amazon Resource Name (ARN) of the AWS Secrets Manager secret that contains the credentials used to access the git repository. The secret must have a staging label of @AWSCURRENT@ and must be in the following format: @{"username": /UserName/ , "password": /Password/ }@
gcSecretARN :: Lens' GitConfig (Maybe Text)
gcSecretARN = lens _gcSecretARN (\s a -> s {_gcSecretARN = a})

-- | The default branch for the Git repository.
gcBranch :: Lens' GitConfig (Maybe Text)
gcBranch = lens _gcBranch (\s a -> s {_gcBranch = a})

-- | The URL where the Git repository is located.
gcRepositoryURL :: Lens' GitConfig Text
gcRepositoryURL = lens _gcRepositoryURL (\s a -> s {_gcRepositoryURL = a})

instance FromJSON GitConfig where
  parseJSON =
    withObject
      "GitConfig"
      ( \x ->
          GitConfig'
            <$> (x .:? "SecretArn")
            <*> (x .:? "Branch")
            <*> (x .: "RepositoryUrl")
      )

instance Hashable GitConfig

instance NFData GitConfig

instance ToJSON GitConfig where
  toJSON GitConfig' {..} =
    object
      ( catMaybes
          [ ("SecretArn" .=) <$> _gcSecretARN,
            ("Branch" .=) <$> _gcBranch,
            Just ("RepositoryUrl" .= _gcRepositoryURL)
          ]
      )
