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
-- Module      : Network.AWS.MediaLive.DescribeInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Produces details about an input
module Network.AWS.MediaLive.DescribeInput
  ( -- * Creating a Request
    describeInput,
    DescribeInput,

    -- * Request Lenses
    dInputId,

    -- * Destructuring the Response
    describeInputResponse,
    DescribeInputResponse,

    -- * Response Lenses
    drsRoleARN,
    drsSources,
    drsInputPartnerIds,
    drsInputSourceType,
    drsMediaConnectFlows,
    drsARN,
    drsId,
    drsSecurityGroups,
    drsDestinations,
    drsState,
    drsName,
    drsTags,
    drsType,
    drsInputClass,
    drsInputDevices,
    drsAttachedChannels,
    drsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for DescribeInputRequest
--
-- /See:/ 'describeInput' smart constructor.
newtype DescribeInput = DescribeInput'
  { _dInputId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dInputId' - Unique ID of the input
describeInput ::
  -- | 'dInputId'
  Text ->
  DescribeInput
describeInput pInputId_ =
  DescribeInput' {_dInputId = pInputId_}

-- | Unique ID of the input
dInputId :: Lens' DescribeInput Text
dInputId = lens _dInputId (\s a -> s {_dInputId = a})

instance AWSRequest DescribeInput where
  type Rs DescribeInput = DescribeInputResponse
  request = get mediaLive
  response =
    receiveJSON
      ( \s h x ->
          DescribeInputResponse'
            <$> (x .?> "roleArn")
            <*> (x .?> "sources" .!@ mempty)
            <*> (x .?> "inputPartnerIds" .!@ mempty)
            <*> (x .?> "inputSourceType")
            <*> (x .?> "mediaConnectFlows" .!@ mempty)
            <*> (x .?> "arn")
            <*> (x .?> "id")
            <*> (x .?> "securityGroups" .!@ mempty)
            <*> (x .?> "destinations" .!@ mempty)
            <*> (x .?> "state")
            <*> (x .?> "name")
            <*> (x .?> "tags" .!@ mempty)
            <*> (x .?> "type")
            <*> (x .?> "inputClass")
            <*> (x .?> "inputDevices" .!@ mempty)
            <*> (x .?> "attachedChannels" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeInput

instance NFData DescribeInput

instance ToHeaders DescribeInput where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeInput where
  toPath DescribeInput' {..} =
    mconcat ["/prod/inputs/", toBS _dInputId]

instance ToQuery DescribeInput where
  toQuery = const mempty

-- | Placeholder documentation for DescribeInputResponse
--
-- /See:/ 'describeInputResponse' smart constructor.
data DescribeInputResponse = DescribeInputResponse'
  { _drsRoleARN ::
      !(Maybe Text),
    _drsSources ::
      !(Maybe [InputSource]),
    _drsInputPartnerIds ::
      !(Maybe [Text]),
    _drsInputSourceType ::
      !(Maybe InputSourceType),
    _drsMediaConnectFlows ::
      !(Maybe [MediaConnectFlow]),
    _drsARN :: !(Maybe Text),
    _drsId :: !(Maybe Text),
    _drsSecurityGroups ::
      !(Maybe [Text]),
    _drsDestinations ::
      !(Maybe [InputDestination]),
    _drsState ::
      !(Maybe InputState),
    _drsName :: !(Maybe Text),
    _drsTags ::
      !(Maybe (Map Text Text)),
    _drsType ::
      !(Maybe InputType),
    _drsInputClass ::
      !(Maybe InputClass),
    _drsInputDevices ::
      !( Maybe
           [InputDeviceSettings]
       ),
    _drsAttachedChannels ::
      !(Maybe [Text]),
    _drsResponseStatus :: !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeInputResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsRoleARN' - The Amazon Resource Name (ARN) of the role this input assumes during and after creation.
--
-- * 'drsSources' - A list of the sources of the input (PULL-type).
--
-- * 'drsInputPartnerIds' - A list of IDs for all Inputs which are partners of this one.
--
-- * 'drsInputSourceType' - Certain pull input sources can be dynamic, meaning that they can have their URL's dynamically changes during input switch actions. Presently, this functionality only works with MP4_FILE inputs.
--
-- * 'drsMediaConnectFlows' - A list of MediaConnect Flows for this input.
--
-- * 'drsARN' - The Unique ARN of the input (generated, immutable).
--
-- * 'drsId' - The generated ID of the input (unique for user account, immutable).
--
-- * 'drsSecurityGroups' - A list of IDs for all the Input Security Groups attached to the input.
--
-- * 'drsDestinations' - A list of the destinations of the input (PUSH-type).
--
-- * 'drsState' - Undocumented member.
--
-- * 'drsName' - The user-assigned name (This is a mutable value).
--
-- * 'drsTags' - A collection of key-value pairs.
--
-- * 'drsType' - Undocumented member.
--
-- * 'drsInputClass' - STANDARD - MediaLive expects two sources to be connected to this input. If the channel is also STANDARD, both sources will be ingested. If the channel is SINGLE_PIPELINE, only the first source will be ingested; the second source will always be ignored, even if the first source fails. SINGLE_PIPELINE - You can connect only one source to this input. If the ChannelClass is also  SINGLE_PIPELINE, this value is valid. If the ChannelClass is STANDARD, this value is not valid because the channel requires two sources in the input.
--
-- * 'drsInputDevices' - Settings for the input devices.
--
-- * 'drsAttachedChannels' - A list of channel IDs that that input is attached to (currently an input can only be attached to one channel).
--
-- * 'drsResponseStatus' - -- | The response status code.
describeInputResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeInputResponse
describeInputResponse pResponseStatus_ =
  DescribeInputResponse'
    { _drsRoleARN = Nothing,
      _drsSources = Nothing,
      _drsInputPartnerIds = Nothing,
      _drsInputSourceType = Nothing,
      _drsMediaConnectFlows = Nothing,
      _drsARN = Nothing,
      _drsId = Nothing,
      _drsSecurityGroups = Nothing,
      _drsDestinations = Nothing,
      _drsState = Nothing,
      _drsName = Nothing,
      _drsTags = Nothing,
      _drsType = Nothing,
      _drsInputClass = Nothing,
      _drsInputDevices = Nothing,
      _drsAttachedChannels = Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the role this input assumes during and after creation.
drsRoleARN :: Lens' DescribeInputResponse (Maybe Text)
drsRoleARN = lens _drsRoleARN (\s a -> s {_drsRoleARN = a})

-- | A list of the sources of the input (PULL-type).
drsSources :: Lens' DescribeInputResponse [InputSource]
drsSources = lens _drsSources (\s a -> s {_drsSources = a}) . _Default . _Coerce

-- | A list of IDs for all Inputs which are partners of this one.
drsInputPartnerIds :: Lens' DescribeInputResponse [Text]
drsInputPartnerIds = lens _drsInputPartnerIds (\s a -> s {_drsInputPartnerIds = a}) . _Default . _Coerce

-- | Certain pull input sources can be dynamic, meaning that they can have their URL's dynamically changes during input switch actions. Presently, this functionality only works with MP4_FILE inputs.
drsInputSourceType :: Lens' DescribeInputResponse (Maybe InputSourceType)
drsInputSourceType = lens _drsInputSourceType (\s a -> s {_drsInputSourceType = a})

-- | A list of MediaConnect Flows for this input.
drsMediaConnectFlows :: Lens' DescribeInputResponse [MediaConnectFlow]
drsMediaConnectFlows = lens _drsMediaConnectFlows (\s a -> s {_drsMediaConnectFlows = a}) . _Default . _Coerce

-- | The Unique ARN of the input (generated, immutable).
drsARN :: Lens' DescribeInputResponse (Maybe Text)
drsARN = lens _drsARN (\s a -> s {_drsARN = a})

-- | The generated ID of the input (unique for user account, immutable).
drsId :: Lens' DescribeInputResponse (Maybe Text)
drsId = lens _drsId (\s a -> s {_drsId = a})

-- | A list of IDs for all the Input Security Groups attached to the input.
drsSecurityGroups :: Lens' DescribeInputResponse [Text]
drsSecurityGroups = lens _drsSecurityGroups (\s a -> s {_drsSecurityGroups = a}) . _Default . _Coerce

-- | A list of the destinations of the input (PUSH-type).
drsDestinations :: Lens' DescribeInputResponse [InputDestination]
drsDestinations = lens _drsDestinations (\s a -> s {_drsDestinations = a}) . _Default . _Coerce

-- | Undocumented member.
drsState :: Lens' DescribeInputResponse (Maybe InputState)
drsState = lens _drsState (\s a -> s {_drsState = a})

-- | The user-assigned name (This is a mutable value).
drsName :: Lens' DescribeInputResponse (Maybe Text)
drsName = lens _drsName (\s a -> s {_drsName = a})

-- | A collection of key-value pairs.
drsTags :: Lens' DescribeInputResponse (HashMap Text Text)
drsTags = lens _drsTags (\s a -> s {_drsTags = a}) . _Default . _Map

-- | Undocumented member.
drsType :: Lens' DescribeInputResponse (Maybe InputType)
drsType = lens _drsType (\s a -> s {_drsType = a})

-- | STANDARD - MediaLive expects two sources to be connected to this input. If the channel is also STANDARD, both sources will be ingested. If the channel is SINGLE_PIPELINE, only the first source will be ingested; the second source will always be ignored, even if the first source fails. SINGLE_PIPELINE - You can connect only one source to this input. If the ChannelClass is also  SINGLE_PIPELINE, this value is valid. If the ChannelClass is STANDARD, this value is not valid because the channel requires two sources in the input.
drsInputClass :: Lens' DescribeInputResponse (Maybe InputClass)
drsInputClass = lens _drsInputClass (\s a -> s {_drsInputClass = a})

-- | Settings for the input devices.
drsInputDevices :: Lens' DescribeInputResponse [InputDeviceSettings]
drsInputDevices = lens _drsInputDevices (\s a -> s {_drsInputDevices = a}) . _Default . _Coerce

-- | A list of channel IDs that that input is attached to (currently an input can only be attached to one channel).
drsAttachedChannels :: Lens' DescribeInputResponse [Text]
drsAttachedChannels = lens _drsAttachedChannels (\s a -> s {_drsAttachedChannels = a}) . _Default . _Coerce

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeInputResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DescribeInputResponse
