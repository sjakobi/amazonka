{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.EndpointProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.EndpointProperties where

import Network.AWS.Comprehend.Types.EndpointStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies information about the specified endpoint.
--
--
--
-- /See:/ 'endpointProperties' smart constructor.
data EndpointProperties = EndpointProperties'
  { _epCurrentInferenceUnits ::
      !(Maybe Nat),
    _epStatus ::
      !(Maybe EndpointStatus),
    _epCreationTime :: !(Maybe POSIX),
    _epDesiredInferenceUnits ::
      !(Maybe Nat),
    _epMessage :: !(Maybe Text),
    _epModelARN :: !(Maybe Text),
    _epLastModifiedTime ::
      !(Maybe POSIX),
    _epEndpointARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EndpointProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epCurrentInferenceUnits' - The number of inference units currently used by the model using this endpoint.
--
-- * 'epStatus' - Specifies the status of the endpoint. Because the endpoint updates and creation are asynchronous, so customers will need to wait for the endpoint to be @Ready@ status before making inference requests.
--
-- * 'epCreationTime' - The creation date and time of the endpoint.
--
-- * 'epDesiredInferenceUnits' - The desired number of inference units to be used by the model using this endpoint. Each inference unit represents of a throughput of 100 characters per second.
--
-- * 'epMessage' - Specifies a reason for failure in cases of @Failed@ status.
--
-- * 'epModelARN' - The Amazon Resource Number (ARN) of the model to which the endpoint is attached.
--
-- * 'epLastModifiedTime' - The date and time that the endpoint was last modified.
--
-- * 'epEndpointARN' - The Amazon Resource Number (ARN) of the endpoint.
endpointProperties ::
  EndpointProperties
endpointProperties =
  EndpointProperties'
    { _epCurrentInferenceUnits =
        Nothing,
      _epStatus = Nothing,
      _epCreationTime = Nothing,
      _epDesiredInferenceUnits = Nothing,
      _epMessage = Nothing,
      _epModelARN = Nothing,
      _epLastModifiedTime = Nothing,
      _epEndpointARN = Nothing
    }

-- | The number of inference units currently used by the model using this endpoint.
epCurrentInferenceUnits :: Lens' EndpointProperties (Maybe Natural)
epCurrentInferenceUnits = lens _epCurrentInferenceUnits (\s a -> s {_epCurrentInferenceUnits = a}) . mapping _Nat

-- | Specifies the status of the endpoint. Because the endpoint updates and creation are asynchronous, so customers will need to wait for the endpoint to be @Ready@ status before making inference requests.
epStatus :: Lens' EndpointProperties (Maybe EndpointStatus)
epStatus = lens _epStatus (\s a -> s {_epStatus = a})

-- | The creation date and time of the endpoint.
epCreationTime :: Lens' EndpointProperties (Maybe UTCTime)
epCreationTime = lens _epCreationTime (\s a -> s {_epCreationTime = a}) . mapping _Time

-- | The desired number of inference units to be used by the model using this endpoint. Each inference unit represents of a throughput of 100 characters per second.
epDesiredInferenceUnits :: Lens' EndpointProperties (Maybe Natural)
epDesiredInferenceUnits = lens _epDesiredInferenceUnits (\s a -> s {_epDesiredInferenceUnits = a}) . mapping _Nat

-- | Specifies a reason for failure in cases of @Failed@ status.
epMessage :: Lens' EndpointProperties (Maybe Text)
epMessage = lens _epMessage (\s a -> s {_epMessage = a})

-- | The Amazon Resource Number (ARN) of the model to which the endpoint is attached.
epModelARN :: Lens' EndpointProperties (Maybe Text)
epModelARN = lens _epModelARN (\s a -> s {_epModelARN = a})

-- | The date and time that the endpoint was last modified.
epLastModifiedTime :: Lens' EndpointProperties (Maybe UTCTime)
epLastModifiedTime = lens _epLastModifiedTime (\s a -> s {_epLastModifiedTime = a}) . mapping _Time

-- | The Amazon Resource Number (ARN) of the endpoint.
epEndpointARN :: Lens' EndpointProperties (Maybe Text)
epEndpointARN = lens _epEndpointARN (\s a -> s {_epEndpointARN = a})

instance FromJSON EndpointProperties where
  parseJSON =
    withObject
      "EndpointProperties"
      ( \x ->
          EndpointProperties'
            <$> (x .:? "CurrentInferenceUnits")
            <*> (x .:? "Status")
            <*> (x .:? "CreationTime")
            <*> (x .:? "DesiredInferenceUnits")
            <*> (x .:? "Message")
            <*> (x .:? "ModelArn")
            <*> (x .:? "LastModifiedTime")
            <*> (x .:? "EndpointArn")
      )

instance Hashable EndpointProperties

instance NFData EndpointProperties
