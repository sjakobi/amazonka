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
-- Module      : Network.AWS.SageMaker.UpdateEndpointWeightsAndCapacities
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates variant weight of one or more variants associated with an existing endpoint, or capacity of one variant associated with an existing endpoint. When it receives the request, Amazon SageMaker sets the endpoint status to @Updating@ . After updating the endpoint, it sets the status to @InService@ . To check the status of an endpoint, use the 'DescribeEndpoint' API.
module Network.AWS.SageMaker.UpdateEndpointWeightsAndCapacities
  ( -- * Creating a Request
    updateEndpointWeightsAndCapacities,
    UpdateEndpointWeightsAndCapacities,

    -- * Request Lenses
    uewacEndpointName,
    uewacDesiredWeightsAndCapacities,

    -- * Destructuring the Response
    updateEndpointWeightsAndCapacitiesResponse,
    UpdateEndpointWeightsAndCapacitiesResponse,

    -- * Response Lenses
    uewacrrsResponseStatus,
    uewacrrsEndpointARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'updateEndpointWeightsAndCapacities' smart constructor.
data UpdateEndpointWeightsAndCapacities = UpdateEndpointWeightsAndCapacities'
  { _uewacEndpointName ::
      !Text,
    _uewacDesiredWeightsAndCapacities ::
      !( List1
           DesiredWeightAndCapacity
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateEndpointWeightsAndCapacities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uewacEndpointName' - The name of an existing Amazon SageMaker endpoint.
--
-- * 'uewacDesiredWeightsAndCapacities' - An object that provides new capacity and weight values for a variant.
updateEndpointWeightsAndCapacities ::
  -- | 'uewacEndpointName'
  Text ->
  -- | 'uewacDesiredWeightsAndCapacities'
  NonEmpty DesiredWeightAndCapacity ->
  UpdateEndpointWeightsAndCapacities
updateEndpointWeightsAndCapacities
  pEndpointName_
  pDesiredWeightsAndCapacities_ =
    UpdateEndpointWeightsAndCapacities'
      { _uewacEndpointName =
          pEndpointName_,
        _uewacDesiredWeightsAndCapacities =
          _List1
            # pDesiredWeightsAndCapacities_
      }

-- | The name of an existing Amazon SageMaker endpoint.
uewacEndpointName :: Lens' UpdateEndpointWeightsAndCapacities Text
uewacEndpointName = lens _uewacEndpointName (\s a -> s {_uewacEndpointName = a})

-- | An object that provides new capacity and weight values for a variant.
uewacDesiredWeightsAndCapacities :: Lens' UpdateEndpointWeightsAndCapacities (NonEmpty DesiredWeightAndCapacity)
uewacDesiredWeightsAndCapacities = lens _uewacDesiredWeightsAndCapacities (\s a -> s {_uewacDesiredWeightsAndCapacities = a}) . _List1

instance
  AWSRequest
    UpdateEndpointWeightsAndCapacities
  where
  type
    Rs UpdateEndpointWeightsAndCapacities =
      UpdateEndpointWeightsAndCapacitiesResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          UpdateEndpointWeightsAndCapacitiesResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "EndpointArn")
      )

instance Hashable UpdateEndpointWeightsAndCapacities

instance NFData UpdateEndpointWeightsAndCapacities

instance ToHeaders UpdateEndpointWeightsAndCapacities where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.UpdateEndpointWeightsAndCapacities" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateEndpointWeightsAndCapacities where
  toJSON UpdateEndpointWeightsAndCapacities' {..} =
    object
      ( catMaybes
          [ Just ("EndpointName" .= _uewacEndpointName),
            Just
              ( "DesiredWeightsAndCapacities"
                  .= _uewacDesiredWeightsAndCapacities
              )
          ]
      )

instance ToPath UpdateEndpointWeightsAndCapacities where
  toPath = const "/"

instance ToQuery UpdateEndpointWeightsAndCapacities where
  toQuery = const mempty

-- | /See:/ 'updateEndpointWeightsAndCapacitiesResponse' smart constructor.
data UpdateEndpointWeightsAndCapacitiesResponse = UpdateEndpointWeightsAndCapacitiesResponse'
  { _uewacrrsResponseStatus ::
      !Int,
    _uewacrrsEndpointARN ::
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

-- | Creates a value of 'UpdateEndpointWeightsAndCapacitiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uewacrrsResponseStatus' - -- | The response status code.
--
-- * 'uewacrrsEndpointARN' - The Amazon Resource Name (ARN) of the updated endpoint.
updateEndpointWeightsAndCapacitiesResponse ::
  -- | 'uewacrrsResponseStatus'
  Int ->
  -- | 'uewacrrsEndpointARN'
  Text ->
  UpdateEndpointWeightsAndCapacitiesResponse
updateEndpointWeightsAndCapacitiesResponse
  pResponseStatus_
  pEndpointARN_ =
    UpdateEndpointWeightsAndCapacitiesResponse'
      { _uewacrrsResponseStatus =
          pResponseStatus_,
        _uewacrrsEndpointARN =
          pEndpointARN_
      }

-- | -- | The response status code.
uewacrrsResponseStatus :: Lens' UpdateEndpointWeightsAndCapacitiesResponse Int
uewacrrsResponseStatus = lens _uewacrrsResponseStatus (\s a -> s {_uewacrrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the updated endpoint.
uewacrrsEndpointARN :: Lens' UpdateEndpointWeightsAndCapacitiesResponse Text
uewacrrsEndpointARN = lens _uewacrrsEndpointARN (\s a -> s {_uewacrrsEndpointARN = a})

instance
  NFData
    UpdateEndpointWeightsAndCapacitiesResponse
