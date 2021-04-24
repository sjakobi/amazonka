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
-- Module      : Network.AWS.IoTData.GetThingShadow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the shadow for the specified thing.
--
--
-- For more information, see <http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html GetThingShadow> in the AWS IoT Developer Guide.
module Network.AWS.IoTData.GetThingShadow
  ( -- * Creating a Request
    getThingShadow,
    GetThingShadow,

    -- * Request Lenses
    gtsShadowName,
    gtsThingName,

    -- * Destructuring the Response
    getThingShadowResponse,
    GetThingShadowResponse,

    -- * Response Lenses
    gtsrrsPayload,
    gtsrrsResponseStatus,
  )
where

import Network.AWS.IoTData.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the GetThingShadow operation.
--
--
--
-- /See:/ 'getThingShadow' smart constructor.
data GetThingShadow = GetThingShadow'
  { _gtsShadowName ::
      !(Maybe Text),
    _gtsThingName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetThingShadow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtsShadowName' - The name of the shadow.
--
-- * 'gtsThingName' - The name of the thing.
getThingShadow ::
  -- | 'gtsThingName'
  Text ->
  GetThingShadow
getThingShadow pThingName_ =
  GetThingShadow'
    { _gtsShadowName = Nothing,
      _gtsThingName = pThingName_
    }

-- | The name of the shadow.
gtsShadowName :: Lens' GetThingShadow (Maybe Text)
gtsShadowName = lens _gtsShadowName (\s a -> s {_gtsShadowName = a})

-- | The name of the thing.
gtsThingName :: Lens' GetThingShadow Text
gtsThingName = lens _gtsThingName (\s a -> s {_gtsThingName = a})

instance AWSRequest GetThingShadow where
  type Rs GetThingShadow = GetThingShadowResponse
  request = get ioTData
  response =
    receiveBytes
      ( \s h x ->
          GetThingShadowResponse'
            <$> (pure (Just x)) <*> (pure (fromEnum s))
      )

instance Hashable GetThingShadow

instance NFData GetThingShadow

instance ToHeaders GetThingShadow where
  toHeaders = const mempty

instance ToPath GetThingShadow where
  toPath GetThingShadow' {..} =
    mconcat ["/things/", toBS _gtsThingName, "/shadow"]

instance ToQuery GetThingShadow where
  toQuery GetThingShadow' {..} =
    mconcat ["name" =: _gtsShadowName]

-- | The output from the GetThingShadow operation.
--
--
--
-- /See:/ 'getThingShadowResponse' smart constructor.
data GetThingShadowResponse = GetThingShadowResponse'
  { _gtsrrsPayload ::
      !(Maybe ByteString),
    _gtsrrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetThingShadowResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtsrrsPayload' - The state information, in JSON format.
--
-- * 'gtsrrsResponseStatus' - -- | The response status code.
getThingShadowResponse ::
  -- | 'gtsrrsResponseStatus'
  Int ->
  GetThingShadowResponse
getThingShadowResponse pResponseStatus_ =
  GetThingShadowResponse'
    { _gtsrrsPayload = Nothing,
      _gtsrrsResponseStatus = pResponseStatus_
    }

-- | The state information, in JSON format.
gtsrrsPayload :: Lens' GetThingShadowResponse (Maybe ByteString)
gtsrrsPayload = lens _gtsrrsPayload (\s a -> s {_gtsrrsPayload = a})

-- | -- | The response status code.
gtsrrsResponseStatus :: Lens' GetThingShadowResponse Int
gtsrrsResponseStatus = lens _gtsrrsResponseStatus (\s a -> s {_gtsrrsResponseStatus = a})

instance NFData GetThingShadowResponse
