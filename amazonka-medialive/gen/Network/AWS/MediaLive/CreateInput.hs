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
-- Module      : Network.AWS.MediaLive.CreateInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create an input
module Network.AWS.MediaLive.CreateInput
  ( -- * Creating a Request
    createInput',
    CreateInput',

    -- * Request Lenses
    ciInputSecurityGroups,
    ciRoleARN,
    ciSources,
    ciMediaConnectFlows,
    ciDestinations,
    ciName,
    ciRequestId,
    ciTags,
    ciType,
    ciVPC,
    ciInputDevices,

    -- * Destructuring the Response
    createInputResponse,
    CreateInputResponse,

    -- * Response Lenses
    cirrsInput,
    cirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The name of the input
--
-- /See:/ 'createInput'' smart constructor.
data CreateInput' = CreateInput''
  { _ciInputSecurityGroups ::
      !(Maybe [Text]),
    _ciRoleARN :: !(Maybe Text),
    _ciSources :: !(Maybe [InputSourceRequest]),
    _ciMediaConnectFlows ::
      !(Maybe [MediaConnectFlowRequest]),
    _ciDestinations ::
      !(Maybe [InputDestinationRequest]),
    _ciName :: !(Maybe Text),
    _ciRequestId :: !(Maybe Text),
    _ciTags :: !(Maybe (Map Text Text)),
    _ciType :: !(Maybe InputType),
    _ciVPC :: !(Maybe InputVPCRequest),
    _ciInputDevices ::
      !(Maybe [InputDeviceSettings])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateInput'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciInputSecurityGroups' - A list of security groups referenced by IDs to attach to the input.
--
-- * 'ciRoleARN' - The Amazon Resource Name (ARN) of the role this input assumes during and after creation.
--
-- * 'ciSources' - The source URLs for a PULL-type input. Every PULL type input needs exactly two source URLs for redundancy. Only specify sources for PULL type Inputs. Leave Destinations empty.
--
-- * 'ciMediaConnectFlows' - A list of the MediaConnect Flows that you want to use in this input. You can specify as few as one Flow and presently, as many as two. The only requirement is when you have more than one is that each Flow is in a separate Availability Zone as this ensures your EML input is redundant to AZ issues.
--
-- * 'ciDestinations' - Destination settings for PUSH type inputs.
--
-- * 'ciName' - Name of the input.
--
-- * 'ciRequestId' - Unique identifier of the request to ensure the request is handled exactly once in case of retries.
--
-- * 'ciTags' - A collection of key-value pairs.
--
-- * 'ciType' - Undocumented member.
--
-- * 'ciVPC' - Undocumented member.
--
-- * 'ciInputDevices' - Settings for the devices.
createInput' ::
  CreateInput'
createInput' =
  CreateInput''
    { _ciInputSecurityGroups = Nothing,
      _ciRoleARN = Nothing,
      _ciSources = Nothing,
      _ciMediaConnectFlows = Nothing,
      _ciDestinations = Nothing,
      _ciName = Nothing,
      _ciRequestId = Nothing,
      _ciTags = Nothing,
      _ciType = Nothing,
      _ciVPC = Nothing,
      _ciInputDevices = Nothing
    }

-- | A list of security groups referenced by IDs to attach to the input.
ciInputSecurityGroups :: Lens' CreateInput' [Text]
ciInputSecurityGroups = lens _ciInputSecurityGroups (\s a -> s {_ciInputSecurityGroups = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the role this input assumes during and after creation.
ciRoleARN :: Lens' CreateInput' (Maybe Text)
ciRoleARN = lens _ciRoleARN (\s a -> s {_ciRoleARN = a})

-- | The source URLs for a PULL-type input. Every PULL type input needs exactly two source URLs for redundancy. Only specify sources for PULL type Inputs. Leave Destinations empty.
ciSources :: Lens' CreateInput' [InputSourceRequest]
ciSources = lens _ciSources (\s a -> s {_ciSources = a}) . _Default . _Coerce

-- | A list of the MediaConnect Flows that you want to use in this input. You can specify as few as one Flow and presently, as many as two. The only requirement is when you have more than one is that each Flow is in a separate Availability Zone as this ensures your EML input is redundant to AZ issues.
ciMediaConnectFlows :: Lens' CreateInput' [MediaConnectFlowRequest]
ciMediaConnectFlows = lens _ciMediaConnectFlows (\s a -> s {_ciMediaConnectFlows = a}) . _Default . _Coerce

-- | Destination settings for PUSH type inputs.
ciDestinations :: Lens' CreateInput' [InputDestinationRequest]
ciDestinations = lens _ciDestinations (\s a -> s {_ciDestinations = a}) . _Default . _Coerce

-- | Name of the input.
ciName :: Lens' CreateInput' (Maybe Text)
ciName = lens _ciName (\s a -> s {_ciName = a})

-- | Unique identifier of the request to ensure the request is handled exactly once in case of retries.
ciRequestId :: Lens' CreateInput' (Maybe Text)
ciRequestId = lens _ciRequestId (\s a -> s {_ciRequestId = a})

-- | A collection of key-value pairs.
ciTags :: Lens' CreateInput' (HashMap Text Text)
ciTags = lens _ciTags (\s a -> s {_ciTags = a}) . _Default . _Map

-- | Undocumented member.
ciType :: Lens' CreateInput' (Maybe InputType)
ciType = lens _ciType (\s a -> s {_ciType = a})

-- | Undocumented member.
ciVPC :: Lens' CreateInput' (Maybe InputVPCRequest)
ciVPC = lens _ciVPC (\s a -> s {_ciVPC = a})

-- | Settings for the devices.
ciInputDevices :: Lens' CreateInput' [InputDeviceSettings]
ciInputDevices = lens _ciInputDevices (\s a -> s {_ciInputDevices = a}) . _Default . _Coerce

instance AWSRequest CreateInput' where
  type Rs CreateInput' = CreateInputResponse
  request = postJSON mediaLive
  response =
    receiveJSON
      ( \s h x ->
          CreateInputResponse'
            <$> (x .?> "input") <*> (pure (fromEnum s))
      )

instance Hashable CreateInput'

instance NFData CreateInput'

instance ToHeaders CreateInput' where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateInput' where
  toJSON CreateInput'' {..} =
    object
      ( catMaybes
          [ ("inputSecurityGroups" .=)
              <$> _ciInputSecurityGroups,
            ("roleArn" .=) <$> _ciRoleARN,
            ("sources" .=) <$> _ciSources,
            ("mediaConnectFlows" .=) <$> _ciMediaConnectFlows,
            ("destinations" .=) <$> _ciDestinations,
            ("name" .=) <$> _ciName,
            ("requestId" .=) <$> _ciRequestId,
            ("tags" .=) <$> _ciTags,
            ("type" .=) <$> _ciType,
            ("vpc" .=) <$> _ciVPC,
            ("inputDevices" .=) <$> _ciInputDevices
          ]
      )

instance ToPath CreateInput' where
  toPath = const "/prod/inputs"

instance ToQuery CreateInput' where
  toQuery = const mempty

-- | Placeholder documentation for CreateInputResponse
--
-- /See:/ 'createInputResponse' smart constructor.
data CreateInputResponse = CreateInputResponse'
  { _cirrsInput ::
      !(Maybe Input),
    _cirrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateInputResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirrsInput' - Undocumented member.
--
-- * 'cirrsResponseStatus' - -- | The response status code.
createInputResponse ::
  -- | 'cirrsResponseStatus'
  Int ->
  CreateInputResponse
createInputResponse pResponseStatus_ =
  CreateInputResponse'
    { _cirrsInput = Nothing,
      _cirrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
cirrsInput :: Lens' CreateInputResponse (Maybe Input)
cirrsInput = lens _cirrsInput (\s a -> s {_cirrsInput = a})

-- | -- | The response status code.
cirrsResponseStatus :: Lens' CreateInputResponse Int
cirrsResponseStatus = lens _cirrsResponseStatus (\s a -> s {_cirrsResponseStatus = a})

instance NFData CreateInputResponse
