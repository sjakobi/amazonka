{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SecretsManager.Types.SecretListEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecretsManager.Types.SecretListEntry where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SecretsManager.Types.RotationRulesType
import Network.AWS.SecretsManager.Types.Tag

-- | A structure that contains the details about a secret. It does not include the encrypted @SecretString@ and @SecretBinary@ values. To get those values, use the 'GetSecretValue' operation.
--
--
--
-- /See:/ 'secretListEntry' smart constructor.
data SecretListEntry = SecretListEntry'
  { _sleCreatedDate ::
      !(Maybe POSIX),
    _sleOwningService :: !(Maybe Text),
    _sleSecretVersionsToStages ::
      !(Maybe (Map Text (List1 Text))),
    _sleLastRotatedDate :: !(Maybe POSIX),
    _sleARN :: !(Maybe Text),
    _sleKMSKeyId :: !(Maybe Text),
    _sleName :: !(Maybe Text),
    _sleLastChangedDate :: !(Maybe POSIX),
    _slePrimaryRegion :: !(Maybe Text),
    _sleRotationRules ::
      !(Maybe RotationRulesType),
    _sleTags :: !(Maybe [Tag]),
    _sleRotationEnabled :: !(Maybe Bool),
    _sleDeletedDate :: !(Maybe POSIX),
    _sleRotationLambdaARN :: !(Maybe Text),
    _sleDescription :: !(Maybe Text),
    _sleLastAccessedDate :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SecretListEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sleCreatedDate' - The date and time when a secret was created.
--
-- * 'sleOwningService' - Returns the name of the service that created the secret.
--
-- * 'sleSecretVersionsToStages' - A list of all of the currently assigned @SecretVersionStage@ staging labels and the @SecretVersionId@ attached to each one. Staging labels are used to keep track of the different versions during the rotation process.
--
-- * 'sleLastRotatedDate' - The most recent date and time that the Secrets Manager rotation process was successfully completed. This value is null if the secret hasn't ever rotated.
--
-- * 'sleARN' - The Amazon Resource Name (ARN) of the secret. For more information about ARNs in Secrets Manager, see <https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#iam-resources Policy Resources> in the /AWS Secrets Manager User Guide/ .
--
-- * 'sleKMSKeyId' - The ARN or alias of the AWS KMS customer master key (CMK) used to encrypt the @SecretString@ and @SecretBinary@ fields in each version of the secret. If you don't provide a key, then Secrets Manager defaults to encrypting the secret fields with the default KMS CMK, the key named @awssecretsmanager@ , for this account.
--
-- * 'sleName' - The friendly name of the secret. You can use forward slashes in the name to represent a path hierarchy. For example, @/prod/databases/dbserver1@ could represent the secret for a server named @dbserver1@ in the folder @databases@ in the folder @prod@ .
--
-- * 'sleLastChangedDate' - The last date and time that this secret was modified in any way.
--
-- * 'slePrimaryRegion' - The Region where Secrets Manager originated the secret.
--
-- * 'sleRotationRules' - A structure that defines the rotation configuration for the secret.
--
-- * 'sleTags' - The list of user-defined tags associated with the secret. To add tags to a secret, use 'TagResource' . To remove tags, use 'UntagResource' .
--
-- * 'sleRotationEnabled' - Indicates whether automatic, scheduled rotation is enabled for this secret.
--
-- * 'sleDeletedDate' - The date and time the deletion of the secret occurred. Not present on active secrets. The secret can be recovered until the number of days in the recovery window has passed, as specified in the @RecoveryWindowInDays@ parameter of the 'DeleteSecret' operation.
--
-- * 'sleRotationLambdaARN' - The ARN of an AWS Lambda function invoked by Secrets Manager to rotate and expire the secret either automatically per the schedule or manually by a call to 'RotateSecret' .
--
-- * 'sleDescription' - The user-provided description of the secret.
--
-- * 'sleLastAccessedDate' - The last date that this secret was accessed. This value is truncated to midnight of the date and therefore shows only the date, not the time.
secretListEntry ::
  SecretListEntry
secretListEntry =
  SecretListEntry'
    { _sleCreatedDate = Nothing,
      _sleOwningService = Nothing,
      _sleSecretVersionsToStages = Nothing,
      _sleLastRotatedDate = Nothing,
      _sleARN = Nothing,
      _sleKMSKeyId = Nothing,
      _sleName = Nothing,
      _sleLastChangedDate = Nothing,
      _slePrimaryRegion = Nothing,
      _sleRotationRules = Nothing,
      _sleTags = Nothing,
      _sleRotationEnabled = Nothing,
      _sleDeletedDate = Nothing,
      _sleRotationLambdaARN = Nothing,
      _sleDescription = Nothing,
      _sleLastAccessedDate = Nothing
    }

-- | The date and time when a secret was created.
sleCreatedDate :: Lens' SecretListEntry (Maybe UTCTime)
sleCreatedDate = lens _sleCreatedDate (\s a -> s {_sleCreatedDate = a}) . mapping _Time

-- | Returns the name of the service that created the secret.
sleOwningService :: Lens' SecretListEntry (Maybe Text)
sleOwningService = lens _sleOwningService (\s a -> s {_sleOwningService = a})

-- | A list of all of the currently assigned @SecretVersionStage@ staging labels and the @SecretVersionId@ attached to each one. Staging labels are used to keep track of the different versions during the rotation process.
sleSecretVersionsToStages :: Lens' SecretListEntry (HashMap Text (NonEmpty Text))
sleSecretVersionsToStages = lens _sleSecretVersionsToStages (\s a -> s {_sleSecretVersionsToStages = a}) . _Default . _Map

-- | The most recent date and time that the Secrets Manager rotation process was successfully completed. This value is null if the secret hasn't ever rotated.
sleLastRotatedDate :: Lens' SecretListEntry (Maybe UTCTime)
sleLastRotatedDate = lens _sleLastRotatedDate (\s a -> s {_sleLastRotatedDate = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the secret. For more information about ARNs in Secrets Manager, see <https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#iam-resources Policy Resources> in the /AWS Secrets Manager User Guide/ .
sleARN :: Lens' SecretListEntry (Maybe Text)
sleARN = lens _sleARN (\s a -> s {_sleARN = a})

-- | The ARN or alias of the AWS KMS customer master key (CMK) used to encrypt the @SecretString@ and @SecretBinary@ fields in each version of the secret. If you don't provide a key, then Secrets Manager defaults to encrypting the secret fields with the default KMS CMK, the key named @awssecretsmanager@ , for this account.
sleKMSKeyId :: Lens' SecretListEntry (Maybe Text)
sleKMSKeyId = lens _sleKMSKeyId (\s a -> s {_sleKMSKeyId = a})

-- | The friendly name of the secret. You can use forward slashes in the name to represent a path hierarchy. For example, @/prod/databases/dbserver1@ could represent the secret for a server named @dbserver1@ in the folder @databases@ in the folder @prod@ .
sleName :: Lens' SecretListEntry (Maybe Text)
sleName = lens _sleName (\s a -> s {_sleName = a})

-- | The last date and time that this secret was modified in any way.
sleLastChangedDate :: Lens' SecretListEntry (Maybe UTCTime)
sleLastChangedDate = lens _sleLastChangedDate (\s a -> s {_sleLastChangedDate = a}) . mapping _Time

-- | The Region where Secrets Manager originated the secret.
slePrimaryRegion :: Lens' SecretListEntry (Maybe Text)
slePrimaryRegion = lens _slePrimaryRegion (\s a -> s {_slePrimaryRegion = a})

-- | A structure that defines the rotation configuration for the secret.
sleRotationRules :: Lens' SecretListEntry (Maybe RotationRulesType)
sleRotationRules = lens _sleRotationRules (\s a -> s {_sleRotationRules = a})

-- | The list of user-defined tags associated with the secret. To add tags to a secret, use 'TagResource' . To remove tags, use 'UntagResource' .
sleTags :: Lens' SecretListEntry [Tag]
sleTags = lens _sleTags (\s a -> s {_sleTags = a}) . _Default . _Coerce

-- | Indicates whether automatic, scheduled rotation is enabled for this secret.
sleRotationEnabled :: Lens' SecretListEntry (Maybe Bool)
sleRotationEnabled = lens _sleRotationEnabled (\s a -> s {_sleRotationEnabled = a})

-- | The date and time the deletion of the secret occurred. Not present on active secrets. The secret can be recovered until the number of days in the recovery window has passed, as specified in the @RecoveryWindowInDays@ parameter of the 'DeleteSecret' operation.
sleDeletedDate :: Lens' SecretListEntry (Maybe UTCTime)
sleDeletedDate = lens _sleDeletedDate (\s a -> s {_sleDeletedDate = a}) . mapping _Time

-- | The ARN of an AWS Lambda function invoked by Secrets Manager to rotate and expire the secret either automatically per the schedule or manually by a call to 'RotateSecret' .
sleRotationLambdaARN :: Lens' SecretListEntry (Maybe Text)
sleRotationLambdaARN = lens _sleRotationLambdaARN (\s a -> s {_sleRotationLambdaARN = a})

-- | The user-provided description of the secret.
sleDescription :: Lens' SecretListEntry (Maybe Text)
sleDescription = lens _sleDescription (\s a -> s {_sleDescription = a})

-- | The last date that this secret was accessed. This value is truncated to midnight of the date and therefore shows only the date, not the time.
sleLastAccessedDate :: Lens' SecretListEntry (Maybe UTCTime)
sleLastAccessedDate = lens _sleLastAccessedDate (\s a -> s {_sleLastAccessedDate = a}) . mapping _Time

instance FromJSON SecretListEntry where
  parseJSON =
    withObject
      "SecretListEntry"
      ( \x ->
          SecretListEntry'
            <$> (x .:? "CreatedDate")
            <*> (x .:? "OwningService")
            <*> (x .:? "SecretVersionsToStages" .!= mempty)
            <*> (x .:? "LastRotatedDate")
            <*> (x .:? "ARN")
            <*> (x .:? "KmsKeyId")
            <*> (x .:? "Name")
            <*> (x .:? "LastChangedDate")
            <*> (x .:? "PrimaryRegion")
            <*> (x .:? "RotationRules")
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "RotationEnabled")
            <*> (x .:? "DeletedDate")
            <*> (x .:? "RotationLambdaARN")
            <*> (x .:? "Description")
            <*> (x .:? "LastAccessedDate")
      )

instance Hashable SecretListEntry

instance NFData SecretListEntry
