{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.Repository
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.Repository where

import Network.AWS.ECR.Types.EncryptionConfiguration
import Network.AWS.ECR.Types.ImageScanningConfiguration
import Network.AWS.ECR.Types.ImageTagMutability
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing a repository.
--
--
--
-- /See:/ 'repository' smart constructor.
data Repository = Repository'
  { _rEncryptionConfiguration ::
      !(Maybe EncryptionConfiguration),
    _rRepositoryURI :: !(Maybe Text),
    _rRegistryId :: !(Maybe Text),
    _rCreatedAt :: !(Maybe POSIX),
    _rRepositoryName :: !(Maybe Text),
    _rRepositoryARN :: !(Maybe Text),
    _rImageScanningConfiguration ::
      !(Maybe ImageScanningConfiguration),
    _rImageTagMutability ::
      !(Maybe ImageTagMutability)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Repository' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rEncryptionConfiguration' - The encryption configuration for the repository. This determines how the contents of your repository are encrypted at rest.
--
-- * 'rRepositoryURI' - The URI for the repository. You can use this URI for container image @push@ and @pull@ operations.
--
-- * 'rRegistryId' - The AWS account ID associated with the registry that contains the repository.
--
-- * 'rCreatedAt' - The date and time, in JavaScript date format, when the repository was created.
--
-- * 'rRepositoryName' - The name of the repository.
--
-- * 'rRepositoryARN' - The Amazon Resource Name (ARN) that identifies the repository. The ARN contains the @arn:aws:ecr@ namespace, followed by the region of the repository, AWS account ID of the repository owner, repository namespace, and repository name. For example, @arn:aws:ecr:region:012345678910:repository/test@ .
--
-- * 'rImageScanningConfiguration' - Undocumented member.
--
-- * 'rImageTagMutability' - The tag mutability setting for the repository.
repository ::
  Repository
repository =
  Repository'
    { _rEncryptionConfiguration = Nothing,
      _rRepositoryURI = Nothing,
      _rRegistryId = Nothing,
      _rCreatedAt = Nothing,
      _rRepositoryName = Nothing,
      _rRepositoryARN = Nothing,
      _rImageScanningConfiguration = Nothing,
      _rImageTagMutability = Nothing
    }

-- | The encryption configuration for the repository. This determines how the contents of your repository are encrypted at rest.
rEncryptionConfiguration :: Lens' Repository (Maybe EncryptionConfiguration)
rEncryptionConfiguration = lens _rEncryptionConfiguration (\s a -> s {_rEncryptionConfiguration = a})

-- | The URI for the repository. You can use this URI for container image @push@ and @pull@ operations.
rRepositoryURI :: Lens' Repository (Maybe Text)
rRepositoryURI = lens _rRepositoryURI (\s a -> s {_rRepositoryURI = a})

-- | The AWS account ID associated with the registry that contains the repository.
rRegistryId :: Lens' Repository (Maybe Text)
rRegistryId = lens _rRegistryId (\s a -> s {_rRegistryId = a})

-- | The date and time, in JavaScript date format, when the repository was created.
rCreatedAt :: Lens' Repository (Maybe UTCTime)
rCreatedAt = lens _rCreatedAt (\s a -> s {_rCreatedAt = a}) . mapping _Time

-- | The name of the repository.
rRepositoryName :: Lens' Repository (Maybe Text)
rRepositoryName = lens _rRepositoryName (\s a -> s {_rRepositoryName = a})

-- | The Amazon Resource Name (ARN) that identifies the repository. The ARN contains the @arn:aws:ecr@ namespace, followed by the region of the repository, AWS account ID of the repository owner, repository namespace, and repository name. For example, @arn:aws:ecr:region:012345678910:repository/test@ .
rRepositoryARN :: Lens' Repository (Maybe Text)
rRepositoryARN = lens _rRepositoryARN (\s a -> s {_rRepositoryARN = a})

-- | Undocumented member.
rImageScanningConfiguration :: Lens' Repository (Maybe ImageScanningConfiguration)
rImageScanningConfiguration = lens _rImageScanningConfiguration (\s a -> s {_rImageScanningConfiguration = a})

-- | The tag mutability setting for the repository.
rImageTagMutability :: Lens' Repository (Maybe ImageTagMutability)
rImageTagMutability = lens _rImageTagMutability (\s a -> s {_rImageTagMutability = a})

instance FromJSON Repository where
  parseJSON =
    withObject
      "Repository"
      ( \x ->
          Repository'
            <$> (x .:? "encryptionConfiguration")
            <*> (x .:? "repositoryUri")
            <*> (x .:? "registryId")
            <*> (x .:? "createdAt")
            <*> (x .:? "repositoryName")
            <*> (x .:? "repositoryArn")
            <*> (x .:? "imageScanningConfiguration")
            <*> (x .:? "imageTagMutability")
      )

instance Hashable Repository

instance NFData Repository
