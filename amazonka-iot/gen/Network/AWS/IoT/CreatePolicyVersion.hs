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
-- Module      : Network.AWS.IoT.CreatePolicyVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new version of the specified AWS IoT policy. To update a policy, create a new policy version. A managed policy can have up to five versions. If the policy has five versions, you must use 'DeletePolicyVersion' to delete an existing version before you create a new one.
--
--
-- Optionally, you can set the new version as the policy's default version. The default version is the operative version (that is, the version that is in effect for the certificates to which the policy is attached).
module Network.AWS.IoT.CreatePolicyVersion
  ( -- * Creating a Request
    createPolicyVersion,
    CreatePolicyVersion,

    -- * Request Lenses
    cpvSetAsDefault,
    cpvPolicyName,
    cpvPolicyDocument,

    -- * Destructuring the Response
    createPolicyVersionResponse,
    CreatePolicyVersionResponse,

    -- * Response Lenses
    cpvrrsPolicyVersionId,
    cpvrrsPolicyDocument,
    cpvrrsIsDefaultVersion,
    cpvrrsPolicyARN,
    cpvrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the CreatePolicyVersion operation.
--
--
--
-- /See:/ 'createPolicyVersion' smart constructor.
data CreatePolicyVersion = CreatePolicyVersion'
  { _cpvSetAsDefault ::
      !(Maybe Bool),
    _cpvPolicyName :: !Text,
    _cpvPolicyDocument :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreatePolicyVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpvSetAsDefault' - Specifies whether the policy version is set as the default. When this parameter is true, the new policy version becomes the operative version (that is, the version that is in effect for the certificates to which the policy is attached).
--
-- * 'cpvPolicyName' - The policy name.
--
-- * 'cpvPolicyDocument' - The JSON document that describes the policy. Minimum length of 1. Maximum length of 2048, excluding whitespace.
createPolicyVersion ::
  -- | 'cpvPolicyName'
  Text ->
  -- | 'cpvPolicyDocument'
  Text ->
  CreatePolicyVersion
createPolicyVersion pPolicyName_ pPolicyDocument_ =
  CreatePolicyVersion'
    { _cpvSetAsDefault = Nothing,
      _cpvPolicyName = pPolicyName_,
      _cpvPolicyDocument = pPolicyDocument_
    }

-- | Specifies whether the policy version is set as the default. When this parameter is true, the new policy version becomes the operative version (that is, the version that is in effect for the certificates to which the policy is attached).
cpvSetAsDefault :: Lens' CreatePolicyVersion (Maybe Bool)
cpvSetAsDefault = lens _cpvSetAsDefault (\s a -> s {_cpvSetAsDefault = a})

-- | The policy name.
cpvPolicyName :: Lens' CreatePolicyVersion Text
cpvPolicyName = lens _cpvPolicyName (\s a -> s {_cpvPolicyName = a})

-- | The JSON document that describes the policy. Minimum length of 1. Maximum length of 2048, excluding whitespace.
cpvPolicyDocument :: Lens' CreatePolicyVersion Text
cpvPolicyDocument = lens _cpvPolicyDocument (\s a -> s {_cpvPolicyDocument = a})

instance AWSRequest CreatePolicyVersion where
  type
    Rs CreatePolicyVersion =
      CreatePolicyVersionResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          CreatePolicyVersionResponse'
            <$> (x .?> "policyVersionId")
            <*> (x .?> "policyDocument")
            <*> (x .?> "isDefaultVersion")
            <*> (x .?> "policyArn")
            <*> (pure (fromEnum s))
      )

instance Hashable CreatePolicyVersion

instance NFData CreatePolicyVersion

instance ToHeaders CreatePolicyVersion where
  toHeaders = const mempty

instance ToJSON CreatePolicyVersion where
  toJSON CreatePolicyVersion' {..} =
    object
      ( catMaybes
          [Just ("policyDocument" .= _cpvPolicyDocument)]
      )

instance ToPath CreatePolicyVersion where
  toPath CreatePolicyVersion' {..} =
    mconcat
      ["/policies/", toBS _cpvPolicyName, "/version"]

instance ToQuery CreatePolicyVersion where
  toQuery CreatePolicyVersion' {..} =
    mconcat ["setAsDefault" =: _cpvSetAsDefault]

-- | The output of the CreatePolicyVersion operation.
--
--
--
-- /See:/ 'createPolicyVersionResponse' smart constructor.
data CreatePolicyVersionResponse = CreatePolicyVersionResponse'
  { _cpvrrsPolicyVersionId ::
      !(Maybe Text),
    _cpvrrsPolicyDocument ::
      !(Maybe Text),
    _cpvrrsIsDefaultVersion ::
      !(Maybe Bool),
    _cpvrrsPolicyARN ::
      !(Maybe Text),
    _cpvrrsResponseStatus ::
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

-- | Creates a value of 'CreatePolicyVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpvrrsPolicyVersionId' - The policy version ID.
--
-- * 'cpvrrsPolicyDocument' - The JSON document that describes the policy.
--
-- * 'cpvrrsIsDefaultVersion' - Specifies whether the policy version is the default.
--
-- * 'cpvrrsPolicyARN' - The policy ARN.
--
-- * 'cpvrrsResponseStatus' - -- | The response status code.
createPolicyVersionResponse ::
  -- | 'cpvrrsResponseStatus'
  Int ->
  CreatePolicyVersionResponse
createPolicyVersionResponse pResponseStatus_ =
  CreatePolicyVersionResponse'
    { _cpvrrsPolicyVersionId =
        Nothing,
      _cpvrrsPolicyDocument = Nothing,
      _cpvrrsIsDefaultVersion = Nothing,
      _cpvrrsPolicyARN = Nothing,
      _cpvrrsResponseStatus = pResponseStatus_
    }

-- | The policy version ID.
cpvrrsPolicyVersionId :: Lens' CreatePolicyVersionResponse (Maybe Text)
cpvrrsPolicyVersionId = lens _cpvrrsPolicyVersionId (\s a -> s {_cpvrrsPolicyVersionId = a})

-- | The JSON document that describes the policy.
cpvrrsPolicyDocument :: Lens' CreatePolicyVersionResponse (Maybe Text)
cpvrrsPolicyDocument = lens _cpvrrsPolicyDocument (\s a -> s {_cpvrrsPolicyDocument = a})

-- | Specifies whether the policy version is the default.
cpvrrsIsDefaultVersion :: Lens' CreatePolicyVersionResponse (Maybe Bool)
cpvrrsIsDefaultVersion = lens _cpvrrsIsDefaultVersion (\s a -> s {_cpvrrsIsDefaultVersion = a})

-- | The policy ARN.
cpvrrsPolicyARN :: Lens' CreatePolicyVersionResponse (Maybe Text)
cpvrrsPolicyARN = lens _cpvrrsPolicyARN (\s a -> s {_cpvrrsPolicyARN = a})

-- | -- | The response status code.
cpvrrsResponseStatus :: Lens' CreatePolicyVersionResponse Int
cpvrrsResponseStatus = lens _cpvrrsResponseStatus (\s a -> s {_cpvrrsResponseStatus = a})

instance NFData CreatePolicyVersionResponse
