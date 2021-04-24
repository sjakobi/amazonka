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
-- Module      : Network.AWS.SecretsManager.CreateSecret
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new secret. A secret in Secrets Manager consists of both the protected secret data and the important information needed to manage the secret.
--
--
-- Secrets Manager stores the encrypted secret data in one of a collection of "versions" associated with the secret. Each version contains a copy of the encrypted secret data. Each version is associated with one or more "staging labels" that identify where the version is in the rotation cycle. The @SecretVersionsToStages@ field of the secret contains the mapping of staging labels to the active versions of the secret. Versions without a staging label are considered deprecated and not included in the list.
--
-- You provide the secret data to be encrypted by putting text in either the @SecretString@ parameter or binary data in the @SecretBinary@ parameter, but not both. If you include @SecretString@ or @SecretBinary@ then Secrets Manager also creates an initial secret version and automatically attaches the staging label @AWSCURRENT@ to the new version.
--
--
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
--     * secretsmanager:CreateSecret
--
--     * kms:GenerateDataKey - needed only if you use a customer-managed AWS KMS key to encrypt the secret. You do not need this permission to use the account default AWS managed CMK for Secrets Manager.
--
--     * kms:Decrypt - needed only if you use a customer-managed AWS KMS key to encrypt the secret. You do not need this permission to use the account default AWS managed CMK for Secrets Manager.
--
--     * secretsmanager:TagResource - needed only if you include the @Tags@ parameter.
--
--
--
-- __Related operations__
--
--     * To delete a secret, use 'DeleteSecret' .
--
--     * To modify an existing secret, use 'UpdateSecret' .
--
--     * To create a new version of a secret, use 'PutSecretValue' .
--
--     * To retrieve the encrypted secure string and secure binary values, use 'GetSecretValue' .
--
--     * To retrieve all other details for a secret, use 'DescribeSecret' . This does not include the encrypted secure string and secure binary values.
--
--     * To retrieve the list of secret versions associated with the current secret, use 'DescribeSecret' and examine the @SecretVersionsToStages@ response value.
module Network.AWS.SecretsManager.CreateSecret
  ( -- * Creating a Request
    createSecret,
    CreateSecret,

    -- * Request Lenses
    csSecretBinary,
    csForceOverwriteReplicaSecret,
    csKMSKeyId,
    csTags,
    csDescription,
    csSecretString,
    csClientRequestToken,
    csAddReplicaRegions,
    csName,

    -- * Destructuring the Response
    createSecretResponse,
    CreateSecretResponse,

    -- * Response Lenses
    csrrsReplicationStatus,
    csrrsARN,
    csrrsVersionId,
    csrrsName,
    csrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SecretsManager.Types

-- | /See:/ 'createSecret' smart constructor.
data CreateSecret = CreateSecret'
  { _csSecretBinary ::
      !(Maybe (Sensitive Base64)),
    _csForceOverwriteReplicaSecret ::
      !(Maybe Bool),
    _csKMSKeyId :: !(Maybe Text),
    _csTags :: !(Maybe [Tag]),
    _csDescription :: !(Maybe Text),
    _csSecretString :: !(Maybe (Sensitive Text)),
    _csClientRequestToken :: !(Maybe Text),
    _csAddReplicaRegions ::
      !(Maybe (List1 ReplicaRegionType)),
    _csName :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateSecret' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csSecretBinary' - (Optional) Specifies binary data that you want to encrypt and store in the new version of the secret. To use this parameter in the command-line tools, we recommend that you store your binary data in a file and then use the appropriate technique for your tool to pass the contents of the file as a parameter. Either @SecretString@ or @SecretBinary@ must have a value, but not both. They cannot both be empty. This parameter is not available using the Secrets Manager console. It can be accessed only by using the AWS CLI or one of the AWS SDKs.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'csForceOverwriteReplicaSecret' - (Optional) If set, the replication overwrites a secret with the same name in the destination region.
--
-- * 'csKMSKeyId' - (Optional) Specifies the ARN, Key ID, or alias of the AWS KMS customer master key (CMK) to be used to encrypt the @SecretString@ or @SecretBinary@ values in the versions stored in this secret. You can specify any of the supported ways to identify a AWS KMS key ID. If you need to reference a CMK in a different account, you can use only the key ARN or the alias ARN. If you don't specify this value, then Secrets Manager defaults to using the AWS account's default CMK (the one named @aws/secretsmanager@ ). If a AWS KMS CMK with that name doesn't yet exist, then Secrets Manager creates it for you automatically the first time it needs to encrypt a version's @SecretString@ or @SecretBinary@ fields. /Important:/ You can use the account default CMK to encrypt and decrypt only if you call this operation using credentials from the same account that owns the secret. If the secret resides in a different account, then you must create a custom CMK and specify the ARN in this field.
--
-- * 'csTags' - (Optional) Specifies a list of user-defined tags that are attached to the secret. Each tag is a "Key" and "Value" pair of strings. This operation only appends tags to the existing list of tags. To remove tags, you must use 'UntagResource' . /Important:/     * Secrets Manager tag key names are case sensitive. A tag with the key "ABC" is a different tag from one with key "abc".     * If you check tags in IAM policy @Condition@ elements as part of your security strategy, then adding or removing a tag can change permissions. If the successful completion of this operation would result in you losing your permissions for this secret, then this operation is blocked and returns an @Access Denied@ error. This parameter requires a JSON text string argument. For information on how to format a JSON parameter for the various command line tool environments, see <https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json Using JSON for Parameters> in the /AWS CLI User Guide/ . For example: @[{"Key":"CostCenter","Value":"12345"},{"Key":"environment","Value":"production"}]@  If your command-line tool or SDK requires quotation marks around the parameter, you should use single quotes to avoid confusion with the double quotes required in the JSON text.  The following basic restrictions apply to tags:     * Maximum number of tags per secret—50     * Maximum key length—127 Unicode characters in UTF-8     * Maximum value length—255 Unicode characters in UTF-8     * Tag keys and values are case sensitive.     * Do not use the @aws:@ prefix in your tag names or values because AWS reserves it for AWS use. You can't edit or delete tag names or values with this prefix. Tags with this prefix do not count against your tags per secret limit.     * If you use your tagging schema across multiple services and resources, remember other services might have restrictions on allowed characters. Generally allowed characters: letters, spaces, and numbers representable in UTF-8, plus the following special characters: + - = . _ : / @.
--
-- * 'csDescription' - (Optional) Specifies a user-provided description of the secret.
--
-- * 'csSecretString' - (Optional) Specifies text data that you want to encrypt and store in this new version of the secret. Either @SecretString@ or @SecretBinary@ must have a value, but not both. They cannot both be empty. If you create a secret by using the Secrets Manager console then Secrets Manager puts the protected secret text in only the @SecretString@ parameter. The Secrets Manager console stores the information as a JSON structure of key/value pairs that the Lambda rotation function knows how to parse. For storing multiple values, we recommend that you use a JSON text string argument and specify key/value pairs. For information on how to format a JSON parameter for the various command line tool environments, see <https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json Using JSON for Parameters> in the /AWS CLI User Guide/ . For example: @{"username":"bob","password":"abc123xyz456"}@  If your command-line tool or SDK requires quotation marks around the parameter, you should use single quotes to avoid confusion with the double quotes required in the JSON text.
--
-- * 'csClientRequestToken' - (Optional) If you include @SecretString@ or @SecretBinary@ , then an initial version is created as part of the secret, and this parameter specifies a unique identifier for the new version.  This value helps ensure idempotency. Secrets Manager uses this value to prevent the accidental creation of duplicate versions if there are failures and retries during a rotation. We recommend that you generate a <https://wikipedia.org/wiki/Universally_unique_identifier UUID-type> value to ensure uniqueness of your versions within the specified secret.      * If the @ClientRequestToken@ value isn't already associated with a version of the secret then a new version of the secret is created.      * If a version with this value already exists and the version @SecretString@ and @SecretBinary@ values are the same as those in the request, then the request is ignored.     * If a version with this value already exists and that version's @SecretString@ and @SecretBinary@ values are different from those in the request, then the request fails because you cannot modify an existing version. Instead, use 'PutSecretValue' to create a new version. This value becomes the @VersionId@ of the new version.
--
-- * 'csAddReplicaRegions' - (Optional) Add a list of regions to replicate secrets. Secrets Manager replicates the KMSKeyID objects to the list of regions specified in the parameter.
--
-- * 'csName' - Specifies the friendly name of the new secret. The secret name must be ASCII letters, digits, or the following characters : /_+=.@-
createSecret ::
  -- | 'csName'
  Text ->
  CreateSecret
createSecret pName_ =
  CreateSecret'
    { _csSecretBinary = Nothing,
      _csForceOverwriteReplicaSecret = Nothing,
      _csKMSKeyId = Nothing,
      _csTags = Nothing,
      _csDescription = Nothing,
      _csSecretString = Nothing,
      _csClientRequestToken = Nothing,
      _csAddReplicaRegions = Nothing,
      _csName = pName_
    }

-- | (Optional) Specifies binary data that you want to encrypt and store in the new version of the secret. To use this parameter in the command-line tools, we recommend that you store your binary data in a file and then use the appropriate technique for your tool to pass the contents of the file as a parameter. Either @SecretString@ or @SecretBinary@ must have a value, but not both. They cannot both be empty. This parameter is not available using the Secrets Manager console. It can be accessed only by using the AWS CLI or one of the AWS SDKs.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
csSecretBinary :: Lens' CreateSecret (Maybe ByteString)
csSecretBinary = lens _csSecretBinary (\s a -> s {_csSecretBinary = a}) . mapping (_Sensitive . _Base64)

-- | (Optional) If set, the replication overwrites a secret with the same name in the destination region.
csForceOverwriteReplicaSecret :: Lens' CreateSecret (Maybe Bool)
csForceOverwriteReplicaSecret = lens _csForceOverwriteReplicaSecret (\s a -> s {_csForceOverwriteReplicaSecret = a})

-- | (Optional) Specifies the ARN, Key ID, or alias of the AWS KMS customer master key (CMK) to be used to encrypt the @SecretString@ or @SecretBinary@ values in the versions stored in this secret. You can specify any of the supported ways to identify a AWS KMS key ID. If you need to reference a CMK in a different account, you can use only the key ARN or the alias ARN. If you don't specify this value, then Secrets Manager defaults to using the AWS account's default CMK (the one named @aws/secretsmanager@ ). If a AWS KMS CMK with that name doesn't yet exist, then Secrets Manager creates it for you automatically the first time it needs to encrypt a version's @SecretString@ or @SecretBinary@ fields. /Important:/ You can use the account default CMK to encrypt and decrypt only if you call this operation using credentials from the same account that owns the secret. If the secret resides in a different account, then you must create a custom CMK and specify the ARN in this field.
csKMSKeyId :: Lens' CreateSecret (Maybe Text)
csKMSKeyId = lens _csKMSKeyId (\s a -> s {_csKMSKeyId = a})

-- | (Optional) Specifies a list of user-defined tags that are attached to the secret. Each tag is a "Key" and "Value" pair of strings. This operation only appends tags to the existing list of tags. To remove tags, you must use 'UntagResource' . /Important:/     * Secrets Manager tag key names are case sensitive. A tag with the key "ABC" is a different tag from one with key "abc".     * If you check tags in IAM policy @Condition@ elements as part of your security strategy, then adding or removing a tag can change permissions. If the successful completion of this operation would result in you losing your permissions for this secret, then this operation is blocked and returns an @Access Denied@ error. This parameter requires a JSON text string argument. For information on how to format a JSON parameter for the various command line tool environments, see <https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json Using JSON for Parameters> in the /AWS CLI User Guide/ . For example: @[{"Key":"CostCenter","Value":"12345"},{"Key":"environment","Value":"production"}]@  If your command-line tool or SDK requires quotation marks around the parameter, you should use single quotes to avoid confusion with the double quotes required in the JSON text.  The following basic restrictions apply to tags:     * Maximum number of tags per secret—50     * Maximum key length—127 Unicode characters in UTF-8     * Maximum value length—255 Unicode characters in UTF-8     * Tag keys and values are case sensitive.     * Do not use the @aws:@ prefix in your tag names or values because AWS reserves it for AWS use. You can't edit or delete tag names or values with this prefix. Tags with this prefix do not count against your tags per secret limit.     * If you use your tagging schema across multiple services and resources, remember other services might have restrictions on allowed characters. Generally allowed characters: letters, spaces, and numbers representable in UTF-8, plus the following special characters: + - = . _ : / @.
csTags :: Lens' CreateSecret [Tag]
csTags = lens _csTags (\s a -> s {_csTags = a}) . _Default . _Coerce

-- | (Optional) Specifies a user-provided description of the secret.
csDescription :: Lens' CreateSecret (Maybe Text)
csDescription = lens _csDescription (\s a -> s {_csDescription = a})

-- | (Optional) Specifies text data that you want to encrypt and store in this new version of the secret. Either @SecretString@ or @SecretBinary@ must have a value, but not both. They cannot both be empty. If you create a secret by using the Secrets Manager console then Secrets Manager puts the protected secret text in only the @SecretString@ parameter. The Secrets Manager console stores the information as a JSON structure of key/value pairs that the Lambda rotation function knows how to parse. For storing multiple values, we recommend that you use a JSON text string argument and specify key/value pairs. For information on how to format a JSON parameter for the various command line tool environments, see <https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json Using JSON for Parameters> in the /AWS CLI User Guide/ . For example: @{"username":"bob","password":"abc123xyz456"}@  If your command-line tool or SDK requires quotation marks around the parameter, you should use single quotes to avoid confusion with the double quotes required in the JSON text.
csSecretString :: Lens' CreateSecret (Maybe Text)
csSecretString = lens _csSecretString (\s a -> s {_csSecretString = a}) . mapping _Sensitive

-- | (Optional) If you include @SecretString@ or @SecretBinary@ , then an initial version is created as part of the secret, and this parameter specifies a unique identifier for the new version.  This value helps ensure idempotency. Secrets Manager uses this value to prevent the accidental creation of duplicate versions if there are failures and retries during a rotation. We recommend that you generate a <https://wikipedia.org/wiki/Universally_unique_identifier UUID-type> value to ensure uniqueness of your versions within the specified secret.      * If the @ClientRequestToken@ value isn't already associated with a version of the secret then a new version of the secret is created.      * If a version with this value already exists and the version @SecretString@ and @SecretBinary@ values are the same as those in the request, then the request is ignored.     * If a version with this value already exists and that version's @SecretString@ and @SecretBinary@ values are different from those in the request, then the request fails because you cannot modify an existing version. Instead, use 'PutSecretValue' to create a new version. This value becomes the @VersionId@ of the new version.
csClientRequestToken :: Lens' CreateSecret (Maybe Text)
csClientRequestToken = lens _csClientRequestToken (\s a -> s {_csClientRequestToken = a})

-- | (Optional) Add a list of regions to replicate secrets. Secrets Manager replicates the KMSKeyID objects to the list of regions specified in the parameter.
csAddReplicaRegions :: Lens' CreateSecret (Maybe (NonEmpty ReplicaRegionType))
csAddReplicaRegions = lens _csAddReplicaRegions (\s a -> s {_csAddReplicaRegions = a}) . mapping _List1

-- | Specifies the friendly name of the new secret. The secret name must be ASCII letters, digits, or the following characters : /_+=.@-
csName :: Lens' CreateSecret Text
csName = lens _csName (\s a -> s {_csName = a})

instance AWSRequest CreateSecret where
  type Rs CreateSecret = CreateSecretResponse
  request = postJSON secretsManager
  response =
    receiveJSON
      ( \s h x ->
          CreateSecretResponse'
            <$> (x .?> "ReplicationStatus" .!@ mempty)
            <*> (x .?> "ARN")
            <*> (x .?> "VersionId")
            <*> (x .?> "Name")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateSecret

instance NFData CreateSecret

instance ToHeaders CreateSecret where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("secretsmanager.CreateSecret" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateSecret where
  toJSON CreateSecret' {..} =
    object
      ( catMaybes
          [ ("SecretBinary" .=) <$> _csSecretBinary,
            ("ForceOverwriteReplicaSecret" .=)
              <$> _csForceOverwriteReplicaSecret,
            ("KmsKeyId" .=) <$> _csKMSKeyId,
            ("Tags" .=) <$> _csTags,
            ("Description" .=) <$> _csDescription,
            ("SecretString" .=) <$> _csSecretString,
            ("ClientRequestToken" .=) <$> _csClientRequestToken,
            ("AddReplicaRegions" .=) <$> _csAddReplicaRegions,
            Just ("Name" .= _csName)
          ]
      )

instance ToPath CreateSecret where
  toPath = const "/"

instance ToQuery CreateSecret where
  toQuery = const mempty

-- | /See:/ 'createSecretResponse' smart constructor.
data CreateSecretResponse = CreateSecretResponse'
  { _csrrsReplicationStatus ::
      !( Maybe
           [ReplicationStatusType]
       ),
    _csrrsARN :: !(Maybe Text),
    _csrrsVersionId ::
      !(Maybe Text),
    _csrrsName :: !(Maybe Text),
    _csrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateSecretResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrrsReplicationStatus' - Describes a list of replication status objects as @InProgress@ , @Failed@ or @InSync@ .
--
-- * 'csrrsARN' - The Amazon Resource Name (ARN) of the secret that you just created.
--
-- * 'csrrsVersionId' - The unique identifier associated with the version of the secret you just created.
--
-- * 'csrrsName' - The friendly name of the secret that you just created.
--
-- * 'csrrsResponseStatus' - -- | The response status code.
createSecretResponse ::
  -- | 'csrrsResponseStatus'
  Int ->
  CreateSecretResponse
createSecretResponse pResponseStatus_ =
  CreateSecretResponse'
    { _csrrsReplicationStatus =
        Nothing,
      _csrrsARN = Nothing,
      _csrrsVersionId = Nothing,
      _csrrsName = Nothing,
      _csrrsResponseStatus = pResponseStatus_
    }

-- | Describes a list of replication status objects as @InProgress@ , @Failed@ or @InSync@ .
csrrsReplicationStatus :: Lens' CreateSecretResponse [ReplicationStatusType]
csrrsReplicationStatus = lens _csrrsReplicationStatus (\s a -> s {_csrrsReplicationStatus = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the secret that you just created.
csrrsARN :: Lens' CreateSecretResponse (Maybe Text)
csrrsARN = lens _csrrsARN (\s a -> s {_csrrsARN = a})

-- | The unique identifier associated with the version of the secret you just created.
csrrsVersionId :: Lens' CreateSecretResponse (Maybe Text)
csrrsVersionId = lens _csrrsVersionId (\s a -> s {_csrrsVersionId = a})

-- | The friendly name of the secret that you just created.
csrrsName :: Lens' CreateSecretResponse (Maybe Text)
csrrsName = lens _csrrsName (\s a -> s {_csrrsName = a})

-- | -- | The response status code.
csrrsResponseStatus :: Lens' CreateSecretResponse Int
csrrsResponseStatus = lens _csrrsResponseStatus (\s a -> s {_csrrsResponseStatus = a})

instance NFData CreateSecretResponse
