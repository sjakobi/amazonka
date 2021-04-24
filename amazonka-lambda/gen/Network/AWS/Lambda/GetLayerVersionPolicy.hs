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
-- Module      : Network.AWS.Lambda.GetLayerVersionPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the permission policy for a version of an <https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html AWS Lambda layer> . For more information, see 'AddLayerVersionPermission' .
module Network.AWS.Lambda.GetLayerVersionPolicy
  ( -- * Creating a Request
    getLayerVersionPolicy,
    GetLayerVersionPolicy,

    -- * Request Lenses
    glvpLayerName,
    glvpVersionNumber,

    -- * Destructuring the Response
    getLayerVersionPolicyResponse,
    GetLayerVersionPolicyResponse,

    -- * Response Lenses
    glvprrsRevisionId,
    glvprrsPolicy,
    glvprrsResponseStatus,
  )
where

import Network.AWS.Lambda.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getLayerVersionPolicy' smart constructor.
data GetLayerVersionPolicy = GetLayerVersionPolicy'
  { _glvpLayerName ::
      !Text,
    _glvpVersionNumber ::
      !Integer
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetLayerVersionPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glvpLayerName' - The name or Amazon Resource Name (ARN) of the layer.
--
-- * 'glvpVersionNumber' - The version number.
getLayerVersionPolicy ::
  -- | 'glvpLayerName'
  Text ->
  -- | 'glvpVersionNumber'
  Integer ->
  GetLayerVersionPolicy
getLayerVersionPolicy pLayerName_ pVersionNumber_ =
  GetLayerVersionPolicy'
    { _glvpLayerName =
        pLayerName_,
      _glvpVersionNumber = pVersionNumber_
    }

-- | The name or Amazon Resource Name (ARN) of the layer.
glvpLayerName :: Lens' GetLayerVersionPolicy Text
glvpLayerName = lens _glvpLayerName (\s a -> s {_glvpLayerName = a})

-- | The version number.
glvpVersionNumber :: Lens' GetLayerVersionPolicy Integer
glvpVersionNumber = lens _glvpVersionNumber (\s a -> s {_glvpVersionNumber = a})

instance AWSRequest GetLayerVersionPolicy where
  type
    Rs GetLayerVersionPolicy =
      GetLayerVersionPolicyResponse
  request = get lambda
  response =
    receiveJSON
      ( \s h x ->
          GetLayerVersionPolicyResponse'
            <$> (x .?> "RevisionId")
            <*> (x .?> "Policy")
            <*> (pure (fromEnum s))
      )

instance Hashable GetLayerVersionPolicy

instance NFData GetLayerVersionPolicy

instance ToHeaders GetLayerVersionPolicy where
  toHeaders = const mempty

instance ToPath GetLayerVersionPolicy where
  toPath GetLayerVersionPolicy' {..} =
    mconcat
      [ "/2018-10-31/layers/",
        toBS _glvpLayerName,
        "/versions/",
        toBS _glvpVersionNumber,
        "/policy"
      ]

instance ToQuery GetLayerVersionPolicy where
  toQuery = const mempty

-- | /See:/ 'getLayerVersionPolicyResponse' smart constructor.
data GetLayerVersionPolicyResponse = GetLayerVersionPolicyResponse'
  { _glvprrsRevisionId ::
      !( Maybe
           Text
       ),
    _glvprrsPolicy ::
      !( Maybe
           Text
       ),
    _glvprrsResponseStatus ::
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

-- | Creates a value of 'GetLayerVersionPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glvprrsRevisionId' - A unique identifier for the current revision of the policy.
--
-- * 'glvprrsPolicy' - The policy document.
--
-- * 'glvprrsResponseStatus' - -- | The response status code.
getLayerVersionPolicyResponse ::
  -- | 'glvprrsResponseStatus'
  Int ->
  GetLayerVersionPolicyResponse
getLayerVersionPolicyResponse pResponseStatus_ =
  GetLayerVersionPolicyResponse'
    { _glvprrsRevisionId =
        Nothing,
      _glvprrsPolicy = Nothing,
      _glvprrsResponseStatus = pResponseStatus_
    }

-- | A unique identifier for the current revision of the policy.
glvprrsRevisionId :: Lens' GetLayerVersionPolicyResponse (Maybe Text)
glvprrsRevisionId = lens _glvprrsRevisionId (\s a -> s {_glvprrsRevisionId = a})

-- | The policy document.
glvprrsPolicy :: Lens' GetLayerVersionPolicyResponse (Maybe Text)
glvprrsPolicy = lens _glvprrsPolicy (\s a -> s {_glvprrsPolicy = a})

-- | -- | The response status code.
glvprrsResponseStatus :: Lens' GetLayerVersionPolicyResponse Int
glvprrsResponseStatus = lens _glvprrsResponseStatus (\s a -> s {_glvprrsResponseStatus = a})

instance NFData GetLayerVersionPolicyResponse
