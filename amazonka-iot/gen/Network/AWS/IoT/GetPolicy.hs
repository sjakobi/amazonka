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
-- Module      : Network.AWS.IoT.GetPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the specified policy with the policy document of the default version.
module Network.AWS.IoT.GetPolicy
  ( -- * Creating a Request
    getPolicy,
    GetPolicy,

    -- * Request Lenses
    gpPolicyName,

    -- * Destructuring the Response
    getPolicyResponse,
    GetPolicyResponse,

    -- * Response Lenses
    gprrsLastModifiedDate,
    gprrsPolicyName,
    gprrsPolicyDocument,
    gprrsCreationDate,
    gprrsDefaultVersionId,
    gprrsGenerationId,
    gprrsPolicyARN,
    gprrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the GetPolicy operation.
--
--
--
-- /See:/ 'getPolicy' smart constructor.
newtype GetPolicy = GetPolicy' {_gpPolicyName :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpPolicyName' - The name of the policy.
getPolicy ::
  -- | 'gpPolicyName'
  Text ->
  GetPolicy
getPolicy pPolicyName_ =
  GetPolicy' {_gpPolicyName = pPolicyName_}

-- | The name of the policy.
gpPolicyName :: Lens' GetPolicy Text
gpPolicyName = lens _gpPolicyName (\s a -> s {_gpPolicyName = a})

instance AWSRequest GetPolicy where
  type Rs GetPolicy = GetPolicyResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          GetPolicyResponse'
            <$> (x .?> "lastModifiedDate")
            <*> (x .?> "policyName")
            <*> (x .?> "policyDocument")
            <*> (x .?> "creationDate")
            <*> (x .?> "defaultVersionId")
            <*> (x .?> "generationId")
            <*> (x .?> "policyArn")
            <*> (pure (fromEnum s))
      )

instance Hashable GetPolicy

instance NFData GetPolicy

instance ToHeaders GetPolicy where
  toHeaders = const mempty

instance ToPath GetPolicy where
  toPath GetPolicy' {..} =
    mconcat ["/policies/", toBS _gpPolicyName]

instance ToQuery GetPolicy where
  toQuery = const mempty

-- | The output from the GetPolicy operation.
--
--
--
-- /See:/ 'getPolicyResponse' smart constructor.
data GetPolicyResponse = GetPolicyResponse'
  { _gprrsLastModifiedDate ::
      !(Maybe POSIX),
    _gprrsPolicyName :: !(Maybe Text),
    _gprrsPolicyDocument ::
      !(Maybe Text),
    _gprrsCreationDate ::
      !(Maybe POSIX),
    _gprrsDefaultVersionId ::
      !(Maybe Text),
    _gprrsGenerationId :: !(Maybe Text),
    _gprrsPolicyARN :: !(Maybe Text),
    _gprrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gprrsLastModifiedDate' - The date the policy was last modified.
--
-- * 'gprrsPolicyName' - The policy name.
--
-- * 'gprrsPolicyDocument' - The JSON document that describes the policy.
--
-- * 'gprrsCreationDate' - The date the policy was created.
--
-- * 'gprrsDefaultVersionId' - The default policy version ID.
--
-- * 'gprrsGenerationId' - The generation ID of the policy.
--
-- * 'gprrsPolicyARN' - The policy ARN.
--
-- * 'gprrsResponseStatus' - -- | The response status code.
getPolicyResponse ::
  -- | 'gprrsResponseStatus'
  Int ->
  GetPolicyResponse
getPolicyResponse pResponseStatus_ =
  GetPolicyResponse'
    { _gprrsLastModifiedDate =
        Nothing,
      _gprrsPolicyName = Nothing,
      _gprrsPolicyDocument = Nothing,
      _gprrsCreationDate = Nothing,
      _gprrsDefaultVersionId = Nothing,
      _gprrsGenerationId = Nothing,
      _gprrsPolicyARN = Nothing,
      _gprrsResponseStatus = pResponseStatus_
    }

-- | The date the policy was last modified.
gprrsLastModifiedDate :: Lens' GetPolicyResponse (Maybe UTCTime)
gprrsLastModifiedDate = lens _gprrsLastModifiedDate (\s a -> s {_gprrsLastModifiedDate = a}) . mapping _Time

-- | The policy name.
gprrsPolicyName :: Lens' GetPolicyResponse (Maybe Text)
gprrsPolicyName = lens _gprrsPolicyName (\s a -> s {_gprrsPolicyName = a})

-- | The JSON document that describes the policy.
gprrsPolicyDocument :: Lens' GetPolicyResponse (Maybe Text)
gprrsPolicyDocument = lens _gprrsPolicyDocument (\s a -> s {_gprrsPolicyDocument = a})

-- | The date the policy was created.
gprrsCreationDate :: Lens' GetPolicyResponse (Maybe UTCTime)
gprrsCreationDate = lens _gprrsCreationDate (\s a -> s {_gprrsCreationDate = a}) . mapping _Time

-- | The default policy version ID.
gprrsDefaultVersionId :: Lens' GetPolicyResponse (Maybe Text)
gprrsDefaultVersionId = lens _gprrsDefaultVersionId (\s a -> s {_gprrsDefaultVersionId = a})

-- | The generation ID of the policy.
gprrsGenerationId :: Lens' GetPolicyResponse (Maybe Text)
gprrsGenerationId = lens _gprrsGenerationId (\s a -> s {_gprrsGenerationId = a})

-- | The policy ARN.
gprrsPolicyARN :: Lens' GetPolicyResponse (Maybe Text)
gprrsPolicyARN = lens _gprrsPolicyARN (\s a -> s {_gprrsPolicyARN = a})

-- | -- | The response status code.
gprrsResponseStatus :: Lens' GetPolicyResponse Int
gprrsResponseStatus = lens _gprrsResponseStatus (\s a -> s {_gprrsResponseStatus = a})

instance NFData GetPolicyResponse
