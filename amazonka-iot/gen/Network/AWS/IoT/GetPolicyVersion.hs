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
-- Module      : Network.AWS.IoT.GetPolicyVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the specified policy version.
module Network.AWS.IoT.GetPolicyVersion
  ( -- * Creating a Request
    getPolicyVersion,
    GetPolicyVersion,

    -- * Request Lenses
    gpvPolicyName,
    gpvPolicyVersionId,

    -- * Destructuring the Response
    getPolicyVersionResponse,
    GetPolicyVersionResponse,

    -- * Response Lenses
    gpvrrsPolicyVersionId,
    gpvrrsLastModifiedDate,
    gpvrrsPolicyName,
    gpvrrsPolicyDocument,
    gpvrrsCreationDate,
    gpvrrsGenerationId,
    gpvrrsIsDefaultVersion,
    gpvrrsPolicyARN,
    gpvrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the GetPolicyVersion operation.
--
--
--
-- /See:/ 'getPolicyVersion' smart constructor.
data GetPolicyVersion = GetPolicyVersion'
  { _gpvPolicyName ::
      !Text,
    _gpvPolicyVersionId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetPolicyVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpvPolicyName' - The name of the policy.
--
-- * 'gpvPolicyVersionId' - The policy version ID.
getPolicyVersion ::
  -- | 'gpvPolicyName'
  Text ->
  -- | 'gpvPolicyVersionId'
  Text ->
  GetPolicyVersion
getPolicyVersion pPolicyName_ pPolicyVersionId_ =
  GetPolicyVersion'
    { _gpvPolicyName = pPolicyName_,
      _gpvPolicyVersionId = pPolicyVersionId_
    }

-- | The name of the policy.
gpvPolicyName :: Lens' GetPolicyVersion Text
gpvPolicyName = lens _gpvPolicyName (\s a -> s {_gpvPolicyName = a})

-- | The policy version ID.
gpvPolicyVersionId :: Lens' GetPolicyVersion Text
gpvPolicyVersionId = lens _gpvPolicyVersionId (\s a -> s {_gpvPolicyVersionId = a})

instance AWSRequest GetPolicyVersion where
  type Rs GetPolicyVersion = GetPolicyVersionResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          GetPolicyVersionResponse'
            <$> (x .?> "policyVersionId")
            <*> (x .?> "lastModifiedDate")
            <*> (x .?> "policyName")
            <*> (x .?> "policyDocument")
            <*> (x .?> "creationDate")
            <*> (x .?> "generationId")
            <*> (x .?> "isDefaultVersion")
            <*> (x .?> "policyArn")
            <*> (pure (fromEnum s))
      )

instance Hashable GetPolicyVersion

instance NFData GetPolicyVersion

instance ToHeaders GetPolicyVersion where
  toHeaders = const mempty

instance ToPath GetPolicyVersion where
  toPath GetPolicyVersion' {..} =
    mconcat
      [ "/policies/",
        toBS _gpvPolicyName,
        "/version/",
        toBS _gpvPolicyVersionId
      ]

instance ToQuery GetPolicyVersion where
  toQuery = const mempty

-- | The output from the GetPolicyVersion operation.
--
--
--
-- /See:/ 'getPolicyVersionResponse' smart constructor.
data GetPolicyVersionResponse = GetPolicyVersionResponse'
  { _gpvrrsPolicyVersionId ::
      !(Maybe Text),
    _gpvrrsLastModifiedDate ::
      !(Maybe POSIX),
    _gpvrrsPolicyName ::
      !(Maybe Text),
    _gpvrrsPolicyDocument ::
      !(Maybe Text),
    _gpvrrsCreationDate ::
      !(Maybe POSIX),
    _gpvrrsGenerationId ::
      !(Maybe Text),
    _gpvrrsIsDefaultVersion ::
      !(Maybe Bool),
    _gpvrrsPolicyARN ::
      !(Maybe Text),
    _gpvrrsResponseStatus ::
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

-- | Creates a value of 'GetPolicyVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpvrrsPolicyVersionId' - The policy version ID.
--
-- * 'gpvrrsLastModifiedDate' - The date the policy was last modified.
--
-- * 'gpvrrsPolicyName' - The policy name.
--
-- * 'gpvrrsPolicyDocument' - The JSON document that describes the policy.
--
-- * 'gpvrrsCreationDate' - The date the policy was created.
--
-- * 'gpvrrsGenerationId' - The generation ID of the policy version.
--
-- * 'gpvrrsIsDefaultVersion' - Specifies whether the policy version is the default.
--
-- * 'gpvrrsPolicyARN' - The policy ARN.
--
-- * 'gpvrrsResponseStatus' - -- | The response status code.
getPolicyVersionResponse ::
  -- | 'gpvrrsResponseStatus'
  Int ->
  GetPolicyVersionResponse
getPolicyVersionResponse pResponseStatus_ =
  GetPolicyVersionResponse'
    { _gpvrrsPolicyVersionId =
        Nothing,
      _gpvrrsLastModifiedDate = Nothing,
      _gpvrrsPolicyName = Nothing,
      _gpvrrsPolicyDocument = Nothing,
      _gpvrrsCreationDate = Nothing,
      _gpvrrsGenerationId = Nothing,
      _gpvrrsIsDefaultVersion = Nothing,
      _gpvrrsPolicyARN = Nothing,
      _gpvrrsResponseStatus = pResponseStatus_
    }

-- | The policy version ID.
gpvrrsPolicyVersionId :: Lens' GetPolicyVersionResponse (Maybe Text)
gpvrrsPolicyVersionId = lens _gpvrrsPolicyVersionId (\s a -> s {_gpvrrsPolicyVersionId = a})

-- | The date the policy was last modified.
gpvrrsLastModifiedDate :: Lens' GetPolicyVersionResponse (Maybe UTCTime)
gpvrrsLastModifiedDate = lens _gpvrrsLastModifiedDate (\s a -> s {_gpvrrsLastModifiedDate = a}) . mapping _Time

-- | The policy name.
gpvrrsPolicyName :: Lens' GetPolicyVersionResponse (Maybe Text)
gpvrrsPolicyName = lens _gpvrrsPolicyName (\s a -> s {_gpvrrsPolicyName = a})

-- | The JSON document that describes the policy.
gpvrrsPolicyDocument :: Lens' GetPolicyVersionResponse (Maybe Text)
gpvrrsPolicyDocument = lens _gpvrrsPolicyDocument (\s a -> s {_gpvrrsPolicyDocument = a})

-- | The date the policy was created.
gpvrrsCreationDate :: Lens' GetPolicyVersionResponse (Maybe UTCTime)
gpvrrsCreationDate = lens _gpvrrsCreationDate (\s a -> s {_gpvrrsCreationDate = a}) . mapping _Time

-- | The generation ID of the policy version.
gpvrrsGenerationId :: Lens' GetPolicyVersionResponse (Maybe Text)
gpvrrsGenerationId = lens _gpvrrsGenerationId (\s a -> s {_gpvrrsGenerationId = a})

-- | Specifies whether the policy version is the default.
gpvrrsIsDefaultVersion :: Lens' GetPolicyVersionResponse (Maybe Bool)
gpvrrsIsDefaultVersion = lens _gpvrrsIsDefaultVersion (\s a -> s {_gpvrrsIsDefaultVersion = a})

-- | The policy ARN.
gpvrrsPolicyARN :: Lens' GetPolicyVersionResponse (Maybe Text)
gpvrrsPolicyARN = lens _gpvrrsPolicyARN (\s a -> s {_gpvrrsPolicyARN = a})

-- | -- | The response status code.
gpvrrsResponseStatus :: Lens' GetPolicyVersionResponse Int
gpvrrsResponseStatus = lens _gpvrrsResponseStatus (\s a -> s {_gpvrrsResponseStatus = a})

instance NFData GetPolicyVersionResponse
