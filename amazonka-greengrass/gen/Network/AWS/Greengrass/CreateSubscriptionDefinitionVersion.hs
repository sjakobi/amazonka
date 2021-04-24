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
-- Module      : Network.AWS.Greengrass.CreateSubscriptionDefinitionVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a version of a subscription definition which has already been defined.
module Network.AWS.Greengrass.CreateSubscriptionDefinitionVersion
  ( -- * Creating a Request
    createSubscriptionDefinitionVersion,
    CreateSubscriptionDefinitionVersion,

    -- * Request Lenses
    csdvSubscriptions,
    csdvAmznClientToken,
    csdvSubscriptionDefinitionId,

    -- * Destructuring the Response
    createSubscriptionDefinitionVersionResponse,
    CreateSubscriptionDefinitionVersionResponse,

    -- * Response Lenses
    csdvrrsCreationTimestamp,
    csdvrrsARN,
    csdvrrsId,
    csdvrrsVersion,
    csdvrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createSubscriptionDefinitionVersion' smart constructor.
data CreateSubscriptionDefinitionVersion = CreateSubscriptionDefinitionVersion'
  { _csdvSubscriptions ::
      !( Maybe
           [Subscription]
       ),
    _csdvAmznClientToken ::
      !( Maybe
           Text
       ),
    _csdvSubscriptionDefinitionId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateSubscriptionDefinitionVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdvSubscriptions' - A list of subscriptions.
--
-- * 'csdvAmznClientToken' - A client token used to correlate requests and responses.
--
-- * 'csdvSubscriptionDefinitionId' - The ID of the subscription definition.
createSubscriptionDefinitionVersion ::
  -- | 'csdvSubscriptionDefinitionId'
  Text ->
  CreateSubscriptionDefinitionVersion
createSubscriptionDefinitionVersion
  pSubscriptionDefinitionId_ =
    CreateSubscriptionDefinitionVersion'
      { _csdvSubscriptions =
          Nothing,
        _csdvAmznClientToken = Nothing,
        _csdvSubscriptionDefinitionId =
          pSubscriptionDefinitionId_
      }

-- | A list of subscriptions.
csdvSubscriptions :: Lens' CreateSubscriptionDefinitionVersion [Subscription]
csdvSubscriptions = lens _csdvSubscriptions (\s a -> s {_csdvSubscriptions = a}) . _Default . _Coerce

-- | A client token used to correlate requests and responses.
csdvAmznClientToken :: Lens' CreateSubscriptionDefinitionVersion (Maybe Text)
csdvAmznClientToken = lens _csdvAmznClientToken (\s a -> s {_csdvAmznClientToken = a})

-- | The ID of the subscription definition.
csdvSubscriptionDefinitionId :: Lens' CreateSubscriptionDefinitionVersion Text
csdvSubscriptionDefinitionId = lens _csdvSubscriptionDefinitionId (\s a -> s {_csdvSubscriptionDefinitionId = a})

instance
  AWSRequest
    CreateSubscriptionDefinitionVersion
  where
  type
    Rs CreateSubscriptionDefinitionVersion =
      CreateSubscriptionDefinitionVersionResponse
  request = postJSON greengrass
  response =
    receiveJSON
      ( \s h x ->
          CreateSubscriptionDefinitionVersionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Version")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateSubscriptionDefinitionVersion

instance NFData CreateSubscriptionDefinitionVersion

instance
  ToHeaders
    CreateSubscriptionDefinitionVersion
  where
  toHeaders CreateSubscriptionDefinitionVersion' {..} =
    mconcat
      [ "X-Amzn-Client-Token" =# _csdvAmznClientToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON CreateSubscriptionDefinitionVersion where
  toJSON CreateSubscriptionDefinitionVersion' {..} =
    object
      ( catMaybes
          [("Subscriptions" .=) <$> _csdvSubscriptions]
      )

instance ToPath CreateSubscriptionDefinitionVersion where
  toPath CreateSubscriptionDefinitionVersion' {..} =
    mconcat
      [ "/greengrass/definition/subscriptions/",
        toBS _csdvSubscriptionDefinitionId,
        "/versions"
      ]

instance ToQuery CreateSubscriptionDefinitionVersion where
  toQuery = const mempty

-- | /See:/ 'createSubscriptionDefinitionVersionResponse' smart constructor.
data CreateSubscriptionDefinitionVersionResponse = CreateSubscriptionDefinitionVersionResponse'
  { _csdvrrsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _csdvrrsARN ::
      !( Maybe
           Text
       ),
    _csdvrrsId ::
      !( Maybe
           Text
       ),
    _csdvrrsVersion ::
      !( Maybe
           Text
       ),
    _csdvrrsResponseStatus ::
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

-- | Creates a value of 'CreateSubscriptionDefinitionVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdvrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the version was created.
--
-- * 'csdvrrsARN' - The ARN of the version.
--
-- * 'csdvrrsId' - The ID of the parent definition that the version is associated with.
--
-- * 'csdvrrsVersion' - The ID of the version.
--
-- * 'csdvrrsResponseStatus' - -- | The response status code.
createSubscriptionDefinitionVersionResponse ::
  -- | 'csdvrrsResponseStatus'
  Int ->
  CreateSubscriptionDefinitionVersionResponse
createSubscriptionDefinitionVersionResponse
  pResponseStatus_ =
    CreateSubscriptionDefinitionVersionResponse'
      { _csdvrrsCreationTimestamp =
          Nothing,
        _csdvrrsARN = Nothing,
        _csdvrrsId = Nothing,
        _csdvrrsVersion = Nothing,
        _csdvrrsResponseStatus =
          pResponseStatus_
      }

-- | The time, in milliseconds since the epoch, when the version was created.
csdvrrsCreationTimestamp :: Lens' CreateSubscriptionDefinitionVersionResponse (Maybe Text)
csdvrrsCreationTimestamp = lens _csdvrrsCreationTimestamp (\s a -> s {_csdvrrsCreationTimestamp = a})

-- | The ARN of the version.
csdvrrsARN :: Lens' CreateSubscriptionDefinitionVersionResponse (Maybe Text)
csdvrrsARN = lens _csdvrrsARN (\s a -> s {_csdvrrsARN = a})

-- | The ID of the parent definition that the version is associated with.
csdvrrsId :: Lens' CreateSubscriptionDefinitionVersionResponse (Maybe Text)
csdvrrsId = lens _csdvrrsId (\s a -> s {_csdvrrsId = a})

-- | The ID of the version.
csdvrrsVersion :: Lens' CreateSubscriptionDefinitionVersionResponse (Maybe Text)
csdvrrsVersion = lens _csdvrrsVersion (\s a -> s {_csdvrrsVersion = a})

-- | -- | The response status code.
csdvrrsResponseStatus :: Lens' CreateSubscriptionDefinitionVersionResponse Int
csdvrrsResponseStatus = lens _csdvrrsResponseStatus (\s a -> s {_csdvrrsResponseStatus = a})

instance
  NFData
    CreateSubscriptionDefinitionVersionResponse
