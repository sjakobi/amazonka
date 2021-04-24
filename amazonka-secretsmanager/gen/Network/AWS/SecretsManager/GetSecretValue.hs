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
-- Module      : Network.AWS.SecretsManager.GetSecretValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the contents of the encrypted fields @SecretString@ or @SecretBinary@ from the specified version of a secret, whichever contains content.
--
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
--     * secretsmanager:GetSecretValue
--
--     * kms:Decrypt - required only if you use a customer-managed AWS KMS key to encrypt the secret. You do not need this permission to use the account's default AWS managed CMK for Secrets Manager.
--
--
--
-- __Related operations__
--
--     * To create a new version of the secret with different encrypted information, use 'PutSecretValue' .
--
--     * To retrieve the non-encrypted details for the secret, use 'DescribeSecret' .
module Network.AWS.SecretsManager.GetSecretValue
  ( -- * Creating a Request
    getSecretValue,
    GetSecretValue,

    -- * Request Lenses
    gsvVersionId,
    gsvVersionStage,
    gsvSecretId,

    -- * Destructuring the Response
    getSecretValueResponse,
    GetSecretValueResponse,

    -- * Response Lenses
    gsvrrsCreatedDate,
    gsvrrsSecretBinary,
    gsvrrsVersionStages,
    gsvrrsARN,
    gsvrrsVersionId,
    gsvrrsName,
    gsvrrsSecretString,
    gsvrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SecretsManager.Types

-- | /See:/ 'getSecretValue' smart constructor.
data GetSecretValue = GetSecretValue'
  { _gsvVersionId ::
      !(Maybe Text),
    _gsvVersionStage :: !(Maybe Text),
    _gsvSecretId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSecretValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsvVersionId' - Specifies the unique identifier of the version of the secret that you want to retrieve. If you specify both this parameter and @VersionStage@ , the two parameters must refer to the same secret version. If you don't specify either a @VersionStage@ or @VersionId@ then the default is to perform the operation on the version with the @VersionStage@ value of @AWSCURRENT@ . This value is typically a <https://wikipedia.org/wiki/Universally_unique_identifier UUID-type> value with 32 hexadecimal digits.
--
-- * 'gsvVersionStage' - Specifies the secret version that you want to retrieve by the staging label attached to the version. Staging labels are used to keep track of different versions during the rotation process. If you specify both this parameter and @VersionId@ , the two parameters must refer to the same secret version . If you don't specify either a @VersionStage@ or @VersionId@ , then the default is to perform the operation on the version with the @VersionStage@ value of @AWSCURRENT@ .
--
-- * 'gsvSecretId' - Specifies the secret containing the version that you want to retrieve. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.
getSecretValue ::
  -- | 'gsvSecretId'
  Text ->
  GetSecretValue
getSecretValue pSecretId_ =
  GetSecretValue'
    { _gsvVersionId = Nothing,
      _gsvVersionStage = Nothing,
      _gsvSecretId = pSecretId_
    }

-- | Specifies the unique identifier of the version of the secret that you want to retrieve. If you specify both this parameter and @VersionStage@ , the two parameters must refer to the same secret version. If you don't specify either a @VersionStage@ or @VersionId@ then the default is to perform the operation on the version with the @VersionStage@ value of @AWSCURRENT@ . This value is typically a <https://wikipedia.org/wiki/Universally_unique_identifier UUID-type> value with 32 hexadecimal digits.
gsvVersionId :: Lens' GetSecretValue (Maybe Text)
gsvVersionId = lens _gsvVersionId (\s a -> s {_gsvVersionId = a})

-- | Specifies the secret version that you want to retrieve by the staging label attached to the version. Staging labels are used to keep track of different versions during the rotation process. If you specify both this parameter and @VersionId@ , the two parameters must refer to the same secret version . If you don't specify either a @VersionStage@ or @VersionId@ , then the default is to perform the operation on the version with the @VersionStage@ value of @AWSCURRENT@ .
gsvVersionStage :: Lens' GetSecretValue (Maybe Text)
gsvVersionStage = lens _gsvVersionStage (\s a -> s {_gsvVersionStage = a})

-- | Specifies the secret containing the version that you want to retrieve. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.
gsvSecretId :: Lens' GetSecretValue Text
gsvSecretId = lens _gsvSecretId (\s a -> s {_gsvSecretId = a})

instance AWSRequest GetSecretValue where
  type Rs GetSecretValue = GetSecretValueResponse
  request = postJSON secretsManager
  response =
    receiveJSON
      ( \s h x ->
          GetSecretValueResponse'
            <$> (x .?> "CreatedDate")
            <*> (x .?> "SecretBinary")
            <*> (x .?> "VersionStages")
            <*> (x .?> "ARN")
            <*> (x .?> "VersionId")
            <*> (x .?> "Name")
            <*> (x .?> "SecretString")
            <*> (pure (fromEnum s))
      )

instance Hashable GetSecretValue

instance NFData GetSecretValue

instance ToHeaders GetSecretValue where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("secretsmanager.GetSecretValue" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetSecretValue where
  toJSON GetSecretValue' {..} =
    object
      ( catMaybes
          [ ("VersionId" .=) <$> _gsvVersionId,
            ("VersionStage" .=) <$> _gsvVersionStage,
            Just ("SecretId" .= _gsvSecretId)
          ]
      )

instance ToPath GetSecretValue where
  toPath = const "/"

instance ToQuery GetSecretValue where
  toQuery = const mempty

-- | /See:/ 'getSecretValueResponse' smart constructor.
data GetSecretValueResponse = GetSecretValueResponse'
  { _gsvrrsCreatedDate ::
      !(Maybe POSIX),
    _gsvrrsSecretBinary ::
      !( Maybe
           (Sensitive Base64)
       ),
    _gsvrrsVersionStages ::
      !(Maybe (List1 Text)),
    _gsvrrsARN ::
      !(Maybe Text),
    _gsvrrsVersionId ::
      !(Maybe Text),
    _gsvrrsName ::
      !(Maybe Text),
    _gsvrrsSecretString ::
      !(Maybe (Sensitive Text)),
    _gsvrrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSecretValueResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsvrrsCreatedDate' - The date and time that this version of the secret was created.
--
-- * 'gsvrrsSecretBinary' - The decrypted part of the protected secret information that was originally provided as binary data in the form of a byte array. The response parameter represents the binary data as a <https://tools.ietf.org/html/rfc4648#section-4 base64-encoded> string. This parameter is not used if the secret is created by the Secrets Manager console. If you store custom information in this field of the secret, then you must code your Lambda rotation function to parse and interpret whatever you store in the @SecretString@ or @SecretBinary@ fields.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'gsvrrsVersionStages' - A list of all of the staging labels currently attached to this version of the secret.
--
-- * 'gsvrrsARN' - The ARN of the secret.
--
-- * 'gsvrrsVersionId' - The unique identifier of this version of the secret.
--
-- * 'gsvrrsName' - The friendly name of the secret.
--
-- * 'gsvrrsSecretString' - The decrypted part of the protected secret information that was originally provided as a string. If you create this secret by using the Secrets Manager console then only the @SecretString@ parameter contains data. Secrets Manager stores the information as a JSON structure of key/value pairs that the Lambda rotation function knows how to parse. If you store custom information in the secret by using the 'CreateSecret' , 'UpdateSecret' , or 'PutSecretValue' API operations instead of the Secrets Manager console, or by using the __Other secret type__ in the console, then you must code your Lambda rotation function to parse and interpret those values.
--
-- * 'gsvrrsResponseStatus' - -- | The response status code.
getSecretValueResponse ::
  -- | 'gsvrrsResponseStatus'
  Int ->
  GetSecretValueResponse
getSecretValueResponse pResponseStatus_ =
  GetSecretValueResponse'
    { _gsvrrsCreatedDate =
        Nothing,
      _gsvrrsSecretBinary = Nothing,
      _gsvrrsVersionStages = Nothing,
      _gsvrrsARN = Nothing,
      _gsvrrsVersionId = Nothing,
      _gsvrrsName = Nothing,
      _gsvrrsSecretString = Nothing,
      _gsvrrsResponseStatus = pResponseStatus_
    }

-- | The date and time that this version of the secret was created.
gsvrrsCreatedDate :: Lens' GetSecretValueResponse (Maybe UTCTime)
gsvrrsCreatedDate = lens _gsvrrsCreatedDate (\s a -> s {_gsvrrsCreatedDate = a}) . mapping _Time

-- | The decrypted part of the protected secret information that was originally provided as binary data in the form of a byte array. The response parameter represents the binary data as a <https://tools.ietf.org/html/rfc4648#section-4 base64-encoded> string. This parameter is not used if the secret is created by the Secrets Manager console. If you store custom information in this field of the secret, then you must code your Lambda rotation function to parse and interpret whatever you store in the @SecretString@ or @SecretBinary@ fields.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
gsvrrsSecretBinary :: Lens' GetSecretValueResponse (Maybe ByteString)
gsvrrsSecretBinary = lens _gsvrrsSecretBinary (\s a -> s {_gsvrrsSecretBinary = a}) . mapping (_Sensitive . _Base64)

-- | A list of all of the staging labels currently attached to this version of the secret.
gsvrrsVersionStages :: Lens' GetSecretValueResponse (Maybe (NonEmpty Text))
gsvrrsVersionStages = lens _gsvrrsVersionStages (\s a -> s {_gsvrrsVersionStages = a}) . mapping _List1

-- | The ARN of the secret.
gsvrrsARN :: Lens' GetSecretValueResponse (Maybe Text)
gsvrrsARN = lens _gsvrrsARN (\s a -> s {_gsvrrsARN = a})

-- | The unique identifier of this version of the secret.
gsvrrsVersionId :: Lens' GetSecretValueResponse (Maybe Text)
gsvrrsVersionId = lens _gsvrrsVersionId (\s a -> s {_gsvrrsVersionId = a})

-- | The friendly name of the secret.
gsvrrsName :: Lens' GetSecretValueResponse (Maybe Text)
gsvrrsName = lens _gsvrrsName (\s a -> s {_gsvrrsName = a})

-- | The decrypted part of the protected secret information that was originally provided as a string. If you create this secret by using the Secrets Manager console then only the @SecretString@ parameter contains data. Secrets Manager stores the information as a JSON structure of key/value pairs that the Lambda rotation function knows how to parse. If you store custom information in the secret by using the 'CreateSecret' , 'UpdateSecret' , or 'PutSecretValue' API operations instead of the Secrets Manager console, or by using the __Other secret type__ in the console, then you must code your Lambda rotation function to parse and interpret those values.
gsvrrsSecretString :: Lens' GetSecretValueResponse (Maybe Text)
gsvrrsSecretString = lens _gsvrrsSecretString (\s a -> s {_gsvrrsSecretString = a}) . mapping _Sensitive

-- | -- | The response status code.
gsvrrsResponseStatus :: Lens' GetSecretValueResponse Int
gsvrrsResponseStatus = lens _gsvrrsResponseStatus (\s a -> s {_gsvrrsResponseStatus = a})

instance NFData GetSecretValueResponse
