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
-- Module      : Network.AWS.SageMaker.CreateApp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a running App for the specified UserProfile. Supported Apps are JupyterServer and KernelGateway. This operation is automatically invoked by Amazon SageMaker Studio upon access to the associated Domain, and when new kernel configurations are selected by the user. A user may have multiple Apps active simultaneously.
module Network.AWS.SageMaker.CreateApp
  ( -- * Creating a Request
    createApp,
    CreateApp,

    -- * Request Lenses
    createapprResourceSpec,
    createapprTags,
    createapprDomainId,
    createapprUserProfileName,
    createapprAppType,
    createapprAppName,

    -- * Destructuring the Response
    createAppResponse,
    CreateAppResponse,

    -- * Response Lenses
    crersAppARN,
    crersResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createApp' smart constructor.
data CreateApp = CreateApp'
  { _createapprResourceSpec ::
      !(Maybe ResourceSpec),
    _createapprTags :: !(Maybe [Tag]),
    _createapprDomainId :: !Text,
    _createapprUserProfileName :: !Text,
    _createapprAppType :: !AppType,
    _createapprAppName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateApp' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'createapprResourceSpec' - The instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance.
--
-- * 'createapprTags' - Each tag consists of a key and an optional value. Tag keys must be unique per resource.
--
-- * 'createapprDomainId' - The domain ID.
--
-- * 'createapprUserProfileName' - The user profile name.
--
-- * 'createapprAppType' - The type of app.
--
-- * 'createapprAppName' - The name of the app.
createApp ::
  -- | 'createapprDomainId'
  Text ->
  -- | 'createapprUserProfileName'
  Text ->
  -- | 'createapprAppType'
  AppType ->
  -- | 'createapprAppName'
  Text ->
  CreateApp
createApp
  pDomainId_
  pUserProfileName_
  pAppType_
  pAppName_ =
    CreateApp'
      { _createapprResourceSpec = Nothing,
        _createapprTags = Nothing,
        _createapprDomainId = pDomainId_,
        _createapprUserProfileName = pUserProfileName_,
        _createapprAppType = pAppType_,
        _createapprAppName = pAppName_
      }

-- | The instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance.
createapprResourceSpec :: Lens' CreateApp (Maybe ResourceSpec)
createapprResourceSpec = lens _createapprResourceSpec (\s a -> s {_createapprResourceSpec = a})

-- | Each tag consists of a key and an optional value. Tag keys must be unique per resource.
createapprTags :: Lens' CreateApp [Tag]
createapprTags = lens _createapprTags (\s a -> s {_createapprTags = a}) . _Default . _Coerce

-- | The domain ID.
createapprDomainId :: Lens' CreateApp Text
createapprDomainId = lens _createapprDomainId (\s a -> s {_createapprDomainId = a})

-- | The user profile name.
createapprUserProfileName :: Lens' CreateApp Text
createapprUserProfileName = lens _createapprUserProfileName (\s a -> s {_createapprUserProfileName = a})

-- | The type of app.
createapprAppType :: Lens' CreateApp AppType
createapprAppType = lens _createapprAppType (\s a -> s {_createapprAppType = a})

-- | The name of the app.
createapprAppName :: Lens' CreateApp Text
createapprAppName = lens _createapprAppName (\s a -> s {_createapprAppName = a})

instance AWSRequest CreateApp where
  type Rs CreateApp = CreateAppResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateAppResponse'
            <$> (x .?> "AppArn") <*> (pure (fromEnum s))
      )

instance Hashable CreateApp

instance NFData CreateApp

instance ToHeaders CreateApp where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreateApp" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateApp where
  toJSON CreateApp' {..} =
    object
      ( catMaybes
          [ ("ResourceSpec" .=) <$> _createapprResourceSpec,
            ("Tags" .=) <$> _createapprTags,
            Just ("DomainId" .= _createapprDomainId),
            Just
              ("UserProfileName" .= _createapprUserProfileName),
            Just ("AppType" .= _createapprAppType),
            Just ("AppName" .= _createapprAppName)
          ]
      )

instance ToPath CreateApp where
  toPath = const "/"

instance ToQuery CreateApp where
  toQuery = const mempty

-- | /See:/ 'createAppResponse' smart constructor.
data CreateAppResponse = CreateAppResponse'
  { _crersAppARN ::
      !(Maybe Text),
    _crersResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateAppResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crersAppARN' - The Amazon Resource Name (ARN) of the app.
--
-- * 'crersResponseStatus' - -- | The response status code.
createAppResponse ::
  -- | 'crersResponseStatus'
  Int ->
  CreateAppResponse
createAppResponse pResponseStatus_ =
  CreateAppResponse'
    { _crersAppARN = Nothing,
      _crersResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the app.
crersAppARN :: Lens' CreateAppResponse (Maybe Text)
crersAppARN = lens _crersAppARN (\s a -> s {_crersAppARN = a})

-- | -- | The response status code.
crersResponseStatus :: Lens' CreateAppResponse Int
crersResponseStatus = lens _crersResponseStatus (\s a -> s {_crersResponseStatus = a})

instance NFData CreateAppResponse
