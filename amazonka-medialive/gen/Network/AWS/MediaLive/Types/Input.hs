{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Input
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Input where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.InputClass
import Network.AWS.MediaLive.Types.InputDestination
import Network.AWS.MediaLive.Types.InputDeviceSettings
import Network.AWS.MediaLive.Types.InputSource
import Network.AWS.MediaLive.Types.InputSourceType
import Network.AWS.MediaLive.Types.InputState
import Network.AWS.MediaLive.Types.InputType
import Network.AWS.MediaLive.Types.MediaConnectFlow
import Network.AWS.Prelude

-- | Placeholder documentation for Input
--
-- /See:/ 'input' smart constructor.
data Input = Input'
  { _iRoleARN :: !(Maybe Text),
    _iSources :: !(Maybe [InputSource]),
    _iInputPartnerIds :: !(Maybe [Text]),
    _iInputSourceType :: !(Maybe InputSourceType),
    _iMediaConnectFlows :: !(Maybe [MediaConnectFlow]),
    _iARN :: !(Maybe Text),
    _iId :: !(Maybe Text),
    _iSecurityGroups :: !(Maybe [Text]),
    _iDestinations :: !(Maybe [InputDestination]),
    _iState :: !(Maybe InputState),
    _iName :: !(Maybe Text),
    _iTags :: !(Maybe (Map Text Text)),
    _iType :: !(Maybe InputType),
    _iInputClass :: !(Maybe InputClass),
    _iInputDevices :: !(Maybe [InputDeviceSettings]),
    _iAttachedChannels :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Input' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iRoleARN' - The Amazon Resource Name (ARN) of the role this input assumes during and after creation.
--
-- * 'iSources' - A list of the sources of the input (PULL-type).
--
-- * 'iInputPartnerIds' - A list of IDs for all Inputs which are partners of this one.
--
-- * 'iInputSourceType' - Certain pull input sources can be dynamic, meaning that they can have their URL's dynamically changes during input switch actions. Presently, this functionality only works with MP4_FILE inputs.
--
-- * 'iMediaConnectFlows' - A list of MediaConnect Flows for this input.
--
-- * 'iARN' - The Unique ARN of the input (generated, immutable).
--
-- * 'iId' - The generated ID of the input (unique for user account, immutable).
--
-- * 'iSecurityGroups' - A list of IDs for all the Input Security Groups attached to the input.
--
-- * 'iDestinations' - A list of the destinations of the input (PUSH-type).
--
-- * 'iState' - Undocumented member.
--
-- * 'iName' - The user-assigned name (This is a mutable value).
--
-- * 'iTags' - A collection of key-value pairs.
--
-- * 'iType' - Undocumented member.
--
-- * 'iInputClass' - STANDARD - MediaLive expects two sources to be connected to this input. If the channel is also STANDARD, both sources will be ingested. If the channel is SINGLE_PIPELINE, only the first source will be ingested; the second source will always be ignored, even if the first source fails. SINGLE_PIPELINE - You can connect only one source to this input. If the ChannelClass is also  SINGLE_PIPELINE, this value is valid. If the ChannelClass is STANDARD, this value is not valid because the channel requires two sources in the input.
--
-- * 'iInputDevices' - Settings for the input devices.
--
-- * 'iAttachedChannels' - A list of channel IDs that that input is attached to (currently an input can only be attached to one channel).
input ::
  Input
input =
  Input'
    { _iRoleARN = Nothing,
      _iSources = Nothing,
      _iInputPartnerIds = Nothing,
      _iInputSourceType = Nothing,
      _iMediaConnectFlows = Nothing,
      _iARN = Nothing,
      _iId = Nothing,
      _iSecurityGroups = Nothing,
      _iDestinations = Nothing,
      _iState = Nothing,
      _iName = Nothing,
      _iTags = Nothing,
      _iType = Nothing,
      _iInputClass = Nothing,
      _iInputDevices = Nothing,
      _iAttachedChannels = Nothing
    }

-- | The Amazon Resource Name (ARN) of the role this input assumes during and after creation.
iRoleARN :: Lens' Input (Maybe Text)
iRoleARN = lens _iRoleARN (\s a -> s {_iRoleARN = a})

-- | A list of the sources of the input (PULL-type).
iSources :: Lens' Input [InputSource]
iSources = lens _iSources (\s a -> s {_iSources = a}) . _Default . _Coerce

-- | A list of IDs for all Inputs which are partners of this one.
iInputPartnerIds :: Lens' Input [Text]
iInputPartnerIds = lens _iInputPartnerIds (\s a -> s {_iInputPartnerIds = a}) . _Default . _Coerce

-- | Certain pull input sources can be dynamic, meaning that they can have their URL's dynamically changes during input switch actions. Presently, this functionality only works with MP4_FILE inputs.
iInputSourceType :: Lens' Input (Maybe InputSourceType)
iInputSourceType = lens _iInputSourceType (\s a -> s {_iInputSourceType = a})

-- | A list of MediaConnect Flows for this input.
iMediaConnectFlows :: Lens' Input [MediaConnectFlow]
iMediaConnectFlows = lens _iMediaConnectFlows (\s a -> s {_iMediaConnectFlows = a}) . _Default . _Coerce

-- | The Unique ARN of the input (generated, immutable).
iARN :: Lens' Input (Maybe Text)
iARN = lens _iARN (\s a -> s {_iARN = a})

-- | The generated ID of the input (unique for user account, immutable).
iId :: Lens' Input (Maybe Text)
iId = lens _iId (\s a -> s {_iId = a})

-- | A list of IDs for all the Input Security Groups attached to the input.
iSecurityGroups :: Lens' Input [Text]
iSecurityGroups = lens _iSecurityGroups (\s a -> s {_iSecurityGroups = a}) . _Default . _Coerce

-- | A list of the destinations of the input (PUSH-type).
iDestinations :: Lens' Input [InputDestination]
iDestinations = lens _iDestinations (\s a -> s {_iDestinations = a}) . _Default . _Coerce

-- | Undocumented member.
iState :: Lens' Input (Maybe InputState)
iState = lens _iState (\s a -> s {_iState = a})

-- | The user-assigned name (This is a mutable value).
iName :: Lens' Input (Maybe Text)
iName = lens _iName (\s a -> s {_iName = a})

-- | A collection of key-value pairs.
iTags :: Lens' Input (HashMap Text Text)
iTags = lens _iTags (\s a -> s {_iTags = a}) . _Default . _Map

-- | Undocumented member.
iType :: Lens' Input (Maybe InputType)
iType = lens _iType (\s a -> s {_iType = a})

-- | STANDARD - MediaLive expects two sources to be connected to this input. If the channel is also STANDARD, both sources will be ingested. If the channel is SINGLE_PIPELINE, only the first source will be ingested; the second source will always be ignored, even if the first source fails. SINGLE_PIPELINE - You can connect only one source to this input. If the ChannelClass is also  SINGLE_PIPELINE, this value is valid. If the ChannelClass is STANDARD, this value is not valid because the channel requires two sources in the input.
iInputClass :: Lens' Input (Maybe InputClass)
iInputClass = lens _iInputClass (\s a -> s {_iInputClass = a})

-- | Settings for the input devices.
iInputDevices :: Lens' Input [InputDeviceSettings]
iInputDevices = lens _iInputDevices (\s a -> s {_iInputDevices = a}) . _Default . _Coerce

-- | A list of channel IDs that that input is attached to (currently an input can only be attached to one channel).
iAttachedChannels :: Lens' Input [Text]
iAttachedChannels = lens _iAttachedChannels (\s a -> s {_iAttachedChannels = a}) . _Default . _Coerce

instance FromJSON Input where
  parseJSON =
    withObject
      "Input"
      ( \x ->
          Input'
            <$> (x .:? "roleArn")
            <*> (x .:? "sources" .!= mempty)
            <*> (x .:? "inputPartnerIds" .!= mempty)
            <*> (x .:? "inputSourceType")
            <*> (x .:? "mediaConnectFlows" .!= mempty)
            <*> (x .:? "arn")
            <*> (x .:? "id")
            <*> (x .:? "securityGroups" .!= mempty)
            <*> (x .:? "destinations" .!= mempty)
            <*> (x .:? "state")
            <*> (x .:? "name")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "type")
            <*> (x .:? "inputClass")
            <*> (x .:? "inputDevices" .!= mempty)
            <*> (x .:? "attachedChannels" .!= mempty)
      )

instance Hashable Input

instance NFData Input
