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
-- Module      : Network.AWS.MediaLive.UpdateInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an input.
module Network.AWS.MediaLive.UpdateInput
  ( -- * Creating a Request
    updateInput',
    UpdateInput',

    -- * Request Lenses
    uiiInputSecurityGroups,
    uiiRoleARN,
    uiiSources,
    uiiMediaConnectFlows,
    uiiDestinations,
    uiiName,
    uiiInputDevices,
    uiiInputId,

    -- * Destructuring the Response
    updateInputResponse,
    UpdateInputResponse,

    -- * Response Lenses
    uirrsInput,
    uirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | A request to update an input.
--
-- /See:/ 'updateInput'' smart constructor.
data UpdateInput' = UpdateInput''
  { _uiiInputSecurityGroups ::
      !(Maybe [Text]),
    _uiiRoleARN :: !(Maybe Text),
    _uiiSources :: !(Maybe [InputSourceRequest]),
    _uiiMediaConnectFlows ::
      !(Maybe [MediaConnectFlowRequest]),
    _uiiDestinations ::
      !(Maybe [InputDestinationRequest]),
    _uiiName :: !(Maybe Text),
    _uiiInputDevices ::
      !(Maybe [InputDeviceRequest]),
    _uiiInputId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateInput'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiiInputSecurityGroups' - A list of security groups referenced by IDs to attach to the input.
--
-- * 'uiiRoleARN' - The Amazon Resource Name (ARN) of the role this input assumes during and after creation.
--
-- * 'uiiSources' - The source URLs for a PULL-type input. Every PULL type input needs exactly two source URLs for redundancy. Only specify sources for PULL type Inputs. Leave Destinations empty.
--
-- * 'uiiMediaConnectFlows' - A list of the MediaConnect Flow ARNs that you want to use as the source of the input. You can specify as few as one Flow and presently, as many as two. The only requirement is when you have more than one is that each Flow is in a separate Availability Zone as this ensures your EML input is redundant to AZ issues.
--
-- * 'uiiDestinations' - Destination settings for PUSH type inputs.
--
-- * 'uiiName' - Name of the input.
--
-- * 'uiiInputDevices' - Settings for the devices.
--
-- * 'uiiInputId' - Unique ID of the input.
updateInput' ::
  -- | 'uiiInputId'
  Text ->
  UpdateInput'
updateInput' pInputId_ =
  UpdateInput''
    { _uiiInputSecurityGroups = Nothing,
      _uiiRoleARN = Nothing,
      _uiiSources = Nothing,
      _uiiMediaConnectFlows = Nothing,
      _uiiDestinations = Nothing,
      _uiiName = Nothing,
      _uiiInputDevices = Nothing,
      _uiiInputId = pInputId_
    }

-- | A list of security groups referenced by IDs to attach to the input.
uiiInputSecurityGroups :: Lens' UpdateInput' [Text]
uiiInputSecurityGroups = lens _uiiInputSecurityGroups (\s a -> s {_uiiInputSecurityGroups = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the role this input assumes during and after creation.
uiiRoleARN :: Lens' UpdateInput' (Maybe Text)
uiiRoleARN = lens _uiiRoleARN (\s a -> s {_uiiRoleARN = a})

-- | The source URLs for a PULL-type input. Every PULL type input needs exactly two source URLs for redundancy. Only specify sources for PULL type Inputs. Leave Destinations empty.
uiiSources :: Lens' UpdateInput' [InputSourceRequest]
uiiSources = lens _uiiSources (\s a -> s {_uiiSources = a}) . _Default . _Coerce

-- | A list of the MediaConnect Flow ARNs that you want to use as the source of the input. You can specify as few as one Flow and presently, as many as two. The only requirement is when you have more than one is that each Flow is in a separate Availability Zone as this ensures your EML input is redundant to AZ issues.
uiiMediaConnectFlows :: Lens' UpdateInput' [MediaConnectFlowRequest]
uiiMediaConnectFlows = lens _uiiMediaConnectFlows (\s a -> s {_uiiMediaConnectFlows = a}) . _Default . _Coerce

-- | Destination settings for PUSH type inputs.
uiiDestinations :: Lens' UpdateInput' [InputDestinationRequest]
uiiDestinations = lens _uiiDestinations (\s a -> s {_uiiDestinations = a}) . _Default . _Coerce

-- | Name of the input.
uiiName :: Lens' UpdateInput' (Maybe Text)
uiiName = lens _uiiName (\s a -> s {_uiiName = a})

-- | Settings for the devices.
uiiInputDevices :: Lens' UpdateInput' [InputDeviceRequest]
uiiInputDevices = lens _uiiInputDevices (\s a -> s {_uiiInputDevices = a}) . _Default . _Coerce

-- | Unique ID of the input.
uiiInputId :: Lens' UpdateInput' Text
uiiInputId = lens _uiiInputId (\s a -> s {_uiiInputId = a})

instance AWSRequest UpdateInput' where
  type Rs UpdateInput' = UpdateInputResponse
  request = putJSON mediaLive
  response =
    receiveJSON
      ( \s h x ->
          UpdateInputResponse'
            <$> (x .?> "input") <*> (pure (fromEnum s))
      )

instance Hashable UpdateInput'

instance NFData UpdateInput'

instance ToHeaders UpdateInput' where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateInput' where
  toJSON UpdateInput'' {..} =
    object
      ( catMaybes
          [ ("inputSecurityGroups" .=)
              <$> _uiiInputSecurityGroups,
            ("roleArn" .=) <$> _uiiRoleARN,
            ("sources" .=) <$> _uiiSources,
            ("mediaConnectFlows" .=) <$> _uiiMediaConnectFlows,
            ("destinations" .=) <$> _uiiDestinations,
            ("name" .=) <$> _uiiName,
            ("inputDevices" .=) <$> _uiiInputDevices
          ]
      )

instance ToPath UpdateInput' where
  toPath UpdateInput'' {..} =
    mconcat ["/prod/inputs/", toBS _uiiInputId]

instance ToQuery UpdateInput' where
  toQuery = const mempty

-- | Placeholder documentation for UpdateInputResponse
--
-- /See:/ 'updateInputResponse' smart constructor.
data UpdateInputResponse = UpdateInputResponse'
  { _uirrsInput ::
      !(Maybe Input),
    _uirrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateInputResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uirrsInput' - Undocumented member.
--
-- * 'uirrsResponseStatus' - -- | The response status code.
updateInputResponse ::
  -- | 'uirrsResponseStatus'
  Int ->
  UpdateInputResponse
updateInputResponse pResponseStatus_ =
  UpdateInputResponse'
    { _uirrsInput = Nothing,
      _uirrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
uirrsInput :: Lens' UpdateInputResponse (Maybe Input)
uirrsInput = lens _uirrsInput (\s a -> s {_uirrsInput = a})

-- | -- | The response status code.
uirrsResponseStatus :: Lens' UpdateInputResponse Int
uirrsResponseStatus = lens _uirrsResponseStatus (\s a -> s {_uirrsResponseStatus = a})

instance NFData UpdateInputResponse
