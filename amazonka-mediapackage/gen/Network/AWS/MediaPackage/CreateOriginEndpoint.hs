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
-- Module      : Network.AWS.MediaPackage.CreateOriginEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new OriginEndpoint record.
module Network.AWS.MediaPackage.CreateOriginEndpoint
  ( -- * Creating a Request
    createOriginEndpoint,
    CreateOriginEndpoint,

    -- * Request Lenses
    coeDashPackage,
    coeStartoverWindowSeconds,
    coeOrigination,
    coeCmafPackage,
    coeManifestName,
    coeWhitelist,
    coeMssPackage,
    coeTags,
    coeDescription,
    coeTimeDelaySeconds,
    coeAuthorization,
    coeHlsPackage,
    coeChannelId,
    coeId,

    -- * Destructuring the Response
    createOriginEndpointResponse,
    CreateOriginEndpointResponse,

    -- * Response Lenses
    coerrsDashPackage,
    coerrsStartoverWindowSeconds,
    coerrsOrigination,
    coerrsChannelId,
    coerrsCmafPackage,
    coerrsManifestName,
    coerrsARN,
    coerrsId,
    coerrsWhitelist,
    coerrsMssPackage,
    coerrsTags,
    coerrsDescription,
    coerrsTimeDelaySeconds,
    coerrsAuthorization,
    coerrsURL,
    coerrsHlsPackage,
    coerrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Configuration parameters used to create a new OriginEndpoint.
--
-- /See:/ 'createOriginEndpoint' smart constructor.
data CreateOriginEndpoint = CreateOriginEndpoint'
  { _coeDashPackage ::
      !(Maybe DashPackage),
    _coeStartoverWindowSeconds ::
      !(Maybe Int),
    _coeOrigination ::
      !(Maybe Origination),
    _coeCmafPackage ::
      !( Maybe
           CmafPackageCreateOrUpdateParameters
       ),
    _coeManifestName ::
      !(Maybe Text),
    _coeWhitelist ::
      !(Maybe [Text]),
    _coeMssPackage ::
      !(Maybe MssPackage),
    _coeTags ::
      !(Maybe (Map Text Text)),
    _coeDescription ::
      !(Maybe Text),
    _coeTimeDelaySeconds ::
      !(Maybe Int),
    _coeAuthorization ::
      !(Maybe Authorization),
    _coeHlsPackage ::
      !(Maybe HlsPackage),
    _coeChannelId :: !Text,
    _coeId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateOriginEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coeDashPackage' - Undocumented member.
--
-- * 'coeStartoverWindowSeconds' - Maximum duration (seconds) of content to retain for startover playback. If not specified, startover playback will be disabled for the OriginEndpoint.
--
-- * 'coeOrigination' - Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
--
-- * 'coeCmafPackage' - Undocumented member.
--
-- * 'coeManifestName' - A short string that will be used as the filename of the OriginEndpoint URL (defaults to "index").
--
-- * 'coeWhitelist' - A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
--
-- * 'coeMssPackage' - Undocumented member.
--
-- * 'coeTags' - Undocumented member.
--
-- * 'coeDescription' - A short text description of the OriginEndpoint.
--
-- * 'coeTimeDelaySeconds' - Amount of delay (seconds) to enforce on the playback of live content. If not specified, there will be no time delay in effect for the OriginEndpoint.
--
-- * 'coeAuthorization' - Undocumented member.
--
-- * 'coeHlsPackage' - Undocumented member.
--
-- * 'coeChannelId' - The ID of the Channel that the OriginEndpoint will be associated with. This cannot be changed after the OriginEndpoint is created.
--
-- * 'coeId' - The ID of the OriginEndpoint.  The ID must be unique within the region and it cannot be changed after the OriginEndpoint is created.
createOriginEndpoint ::
  -- | 'coeChannelId'
  Text ->
  -- | 'coeId'
  Text ->
  CreateOriginEndpoint
createOriginEndpoint pChannelId_ pId_ =
  CreateOriginEndpoint'
    { _coeDashPackage = Nothing,
      _coeStartoverWindowSeconds = Nothing,
      _coeOrigination = Nothing,
      _coeCmafPackage = Nothing,
      _coeManifestName = Nothing,
      _coeWhitelist = Nothing,
      _coeMssPackage = Nothing,
      _coeTags = Nothing,
      _coeDescription = Nothing,
      _coeTimeDelaySeconds = Nothing,
      _coeAuthorization = Nothing,
      _coeHlsPackage = Nothing,
      _coeChannelId = pChannelId_,
      _coeId = pId_
    }

-- | Undocumented member.
coeDashPackage :: Lens' CreateOriginEndpoint (Maybe DashPackage)
coeDashPackage = lens _coeDashPackage (\s a -> s {_coeDashPackage = a})

-- | Maximum duration (seconds) of content to retain for startover playback. If not specified, startover playback will be disabled for the OriginEndpoint.
coeStartoverWindowSeconds :: Lens' CreateOriginEndpoint (Maybe Int)
coeStartoverWindowSeconds = lens _coeStartoverWindowSeconds (\s a -> s {_coeStartoverWindowSeconds = a})

-- | Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
coeOrigination :: Lens' CreateOriginEndpoint (Maybe Origination)
coeOrigination = lens _coeOrigination (\s a -> s {_coeOrigination = a})

-- | Undocumented member.
coeCmafPackage :: Lens' CreateOriginEndpoint (Maybe CmafPackageCreateOrUpdateParameters)
coeCmafPackage = lens _coeCmafPackage (\s a -> s {_coeCmafPackage = a})

-- | A short string that will be used as the filename of the OriginEndpoint URL (defaults to "index").
coeManifestName :: Lens' CreateOriginEndpoint (Maybe Text)
coeManifestName = lens _coeManifestName (\s a -> s {_coeManifestName = a})

-- | A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
coeWhitelist :: Lens' CreateOriginEndpoint [Text]
coeWhitelist = lens _coeWhitelist (\s a -> s {_coeWhitelist = a}) . _Default . _Coerce

-- | Undocumented member.
coeMssPackage :: Lens' CreateOriginEndpoint (Maybe MssPackage)
coeMssPackage = lens _coeMssPackage (\s a -> s {_coeMssPackage = a})

-- | Undocumented member.
coeTags :: Lens' CreateOriginEndpoint (HashMap Text Text)
coeTags = lens _coeTags (\s a -> s {_coeTags = a}) . _Default . _Map

-- | A short text description of the OriginEndpoint.
coeDescription :: Lens' CreateOriginEndpoint (Maybe Text)
coeDescription = lens _coeDescription (\s a -> s {_coeDescription = a})

-- | Amount of delay (seconds) to enforce on the playback of live content. If not specified, there will be no time delay in effect for the OriginEndpoint.
coeTimeDelaySeconds :: Lens' CreateOriginEndpoint (Maybe Int)
coeTimeDelaySeconds = lens _coeTimeDelaySeconds (\s a -> s {_coeTimeDelaySeconds = a})

-- | Undocumented member.
coeAuthorization :: Lens' CreateOriginEndpoint (Maybe Authorization)
coeAuthorization = lens _coeAuthorization (\s a -> s {_coeAuthorization = a})

-- | Undocumented member.
coeHlsPackage :: Lens' CreateOriginEndpoint (Maybe HlsPackage)
coeHlsPackage = lens _coeHlsPackage (\s a -> s {_coeHlsPackage = a})

-- | The ID of the Channel that the OriginEndpoint will be associated with. This cannot be changed after the OriginEndpoint is created.
coeChannelId :: Lens' CreateOriginEndpoint Text
coeChannelId = lens _coeChannelId (\s a -> s {_coeChannelId = a})

-- | The ID of the OriginEndpoint.  The ID must be unique within the region and it cannot be changed after the OriginEndpoint is created.
coeId :: Lens' CreateOriginEndpoint Text
coeId = lens _coeId (\s a -> s {_coeId = a})

instance AWSRequest CreateOriginEndpoint where
  type
    Rs CreateOriginEndpoint =
      CreateOriginEndpointResponse
  request = postJSON mediaPackage
  response =
    receiveJSON
      ( \s h x ->
          CreateOriginEndpointResponse'
            <$> (x .?> "dashPackage")
            <*> (x .?> "startoverWindowSeconds")
            <*> (x .?> "origination")
            <*> (x .?> "channelId")
            <*> (x .?> "cmafPackage")
            <*> (x .?> "manifestName")
            <*> (x .?> "arn")
            <*> (x .?> "id")
            <*> (x .?> "whitelist" .!@ mempty)
            <*> (x .?> "mssPackage")
            <*> (x .?> "tags" .!@ mempty)
            <*> (x .?> "description")
            <*> (x .?> "timeDelaySeconds")
            <*> (x .?> "authorization")
            <*> (x .?> "url")
            <*> (x .?> "hlsPackage")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateOriginEndpoint

instance NFData CreateOriginEndpoint

instance ToHeaders CreateOriginEndpoint where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateOriginEndpoint where
  toJSON CreateOriginEndpoint' {..} =
    object
      ( catMaybes
          [ ("dashPackage" .=) <$> _coeDashPackage,
            ("startoverWindowSeconds" .=)
              <$> _coeStartoverWindowSeconds,
            ("origination" .=) <$> _coeOrigination,
            ("cmafPackage" .=) <$> _coeCmafPackage,
            ("manifestName" .=) <$> _coeManifestName,
            ("whitelist" .=) <$> _coeWhitelist,
            ("mssPackage" .=) <$> _coeMssPackage,
            ("tags" .=) <$> _coeTags,
            ("description" .=) <$> _coeDescription,
            ("timeDelaySeconds" .=) <$> _coeTimeDelaySeconds,
            ("authorization" .=) <$> _coeAuthorization,
            ("hlsPackage" .=) <$> _coeHlsPackage,
            Just ("channelId" .= _coeChannelId),
            Just ("id" .= _coeId)
          ]
      )

instance ToPath CreateOriginEndpoint where
  toPath = const "/origin_endpoints"

instance ToQuery CreateOriginEndpoint where
  toQuery = const mempty

-- | /See:/ 'createOriginEndpointResponse' smart constructor.
data CreateOriginEndpointResponse = CreateOriginEndpointResponse'
  { _coerrsDashPackage ::
      !( Maybe
           DashPackage
       ),
    _coerrsStartoverWindowSeconds ::
      !(Maybe Int),
    _coerrsOrigination ::
      !( Maybe
           Origination
       ),
    _coerrsChannelId ::
      !(Maybe Text),
    _coerrsCmafPackage ::
      !( Maybe
           CmafPackage
       ),
    _coerrsManifestName ::
      !(Maybe Text),
    _coerrsARN ::
      !(Maybe Text),
    _coerrsId ::
      !(Maybe Text),
    _coerrsWhitelist ::
      !( Maybe
           [Text]
       ),
    _coerrsMssPackage ::
      !( Maybe
           MssPackage
       ),
    _coerrsTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _coerrsDescription ::
      !(Maybe Text),
    _coerrsTimeDelaySeconds ::
      !(Maybe Int),
    _coerrsAuthorization ::
      !( Maybe
           Authorization
       ),
    _coerrsURL ::
      !(Maybe Text),
    _coerrsHlsPackage ::
      !( Maybe
           HlsPackage
       ),
    _coerrsResponseStatus ::
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

-- | Creates a value of 'CreateOriginEndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coerrsDashPackage' - Undocumented member.
--
-- * 'coerrsStartoverWindowSeconds' - Maximum duration (seconds) of content to retain for startover playback. If not specified, startover playback will be disabled for the OriginEndpoint.
--
-- * 'coerrsOrigination' - Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
--
-- * 'coerrsChannelId' - The ID of the Channel the OriginEndpoint is associated with.
--
-- * 'coerrsCmafPackage' - Undocumented member.
--
-- * 'coerrsManifestName' - A short string appended to the end of the OriginEndpoint URL.
--
-- * 'coerrsARN' - The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
--
-- * 'coerrsId' - The ID of the OriginEndpoint.
--
-- * 'coerrsWhitelist' - A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
--
-- * 'coerrsMssPackage' - Undocumented member.
--
-- * 'coerrsTags' - Undocumented member.
--
-- * 'coerrsDescription' - A short text description of the OriginEndpoint.
--
-- * 'coerrsTimeDelaySeconds' - Amount of delay (seconds) to enforce on the playback of live content. If not specified, there will be no time delay in effect for the OriginEndpoint.
--
-- * 'coerrsAuthorization' - Undocumented member.
--
-- * 'coerrsURL' - The URL of the packaged OriginEndpoint for consumption.
--
-- * 'coerrsHlsPackage' - Undocumented member.
--
-- * 'coerrsResponseStatus' - -- | The response status code.
createOriginEndpointResponse ::
  -- | 'coerrsResponseStatus'
  Int ->
  CreateOriginEndpointResponse
createOriginEndpointResponse pResponseStatus_ =
  CreateOriginEndpointResponse'
    { _coerrsDashPackage =
        Nothing,
      _coerrsStartoverWindowSeconds = Nothing,
      _coerrsOrigination = Nothing,
      _coerrsChannelId = Nothing,
      _coerrsCmafPackage = Nothing,
      _coerrsManifestName = Nothing,
      _coerrsARN = Nothing,
      _coerrsId = Nothing,
      _coerrsWhitelist = Nothing,
      _coerrsMssPackage = Nothing,
      _coerrsTags = Nothing,
      _coerrsDescription = Nothing,
      _coerrsTimeDelaySeconds = Nothing,
      _coerrsAuthorization = Nothing,
      _coerrsURL = Nothing,
      _coerrsHlsPackage = Nothing,
      _coerrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
coerrsDashPackage :: Lens' CreateOriginEndpointResponse (Maybe DashPackage)
coerrsDashPackage = lens _coerrsDashPackage (\s a -> s {_coerrsDashPackage = a})

-- | Maximum duration (seconds) of content to retain for startover playback. If not specified, startover playback will be disabled for the OriginEndpoint.
coerrsStartoverWindowSeconds :: Lens' CreateOriginEndpointResponse (Maybe Int)
coerrsStartoverWindowSeconds = lens _coerrsStartoverWindowSeconds (\s a -> s {_coerrsStartoverWindowSeconds = a})

-- | Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
coerrsOrigination :: Lens' CreateOriginEndpointResponse (Maybe Origination)
coerrsOrigination = lens _coerrsOrigination (\s a -> s {_coerrsOrigination = a})

-- | The ID of the Channel the OriginEndpoint is associated with.
coerrsChannelId :: Lens' CreateOriginEndpointResponse (Maybe Text)
coerrsChannelId = lens _coerrsChannelId (\s a -> s {_coerrsChannelId = a})

-- | Undocumented member.
coerrsCmafPackage :: Lens' CreateOriginEndpointResponse (Maybe CmafPackage)
coerrsCmafPackage = lens _coerrsCmafPackage (\s a -> s {_coerrsCmafPackage = a})

-- | A short string appended to the end of the OriginEndpoint URL.
coerrsManifestName :: Lens' CreateOriginEndpointResponse (Maybe Text)
coerrsManifestName = lens _coerrsManifestName (\s a -> s {_coerrsManifestName = a})

-- | The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
coerrsARN :: Lens' CreateOriginEndpointResponse (Maybe Text)
coerrsARN = lens _coerrsARN (\s a -> s {_coerrsARN = a})

-- | The ID of the OriginEndpoint.
coerrsId :: Lens' CreateOriginEndpointResponse (Maybe Text)
coerrsId = lens _coerrsId (\s a -> s {_coerrsId = a})

-- | A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
coerrsWhitelist :: Lens' CreateOriginEndpointResponse [Text]
coerrsWhitelist = lens _coerrsWhitelist (\s a -> s {_coerrsWhitelist = a}) . _Default . _Coerce

-- | Undocumented member.
coerrsMssPackage :: Lens' CreateOriginEndpointResponse (Maybe MssPackage)
coerrsMssPackage = lens _coerrsMssPackage (\s a -> s {_coerrsMssPackage = a})

-- | Undocumented member.
coerrsTags :: Lens' CreateOriginEndpointResponse (HashMap Text Text)
coerrsTags = lens _coerrsTags (\s a -> s {_coerrsTags = a}) . _Default . _Map

-- | A short text description of the OriginEndpoint.
coerrsDescription :: Lens' CreateOriginEndpointResponse (Maybe Text)
coerrsDescription = lens _coerrsDescription (\s a -> s {_coerrsDescription = a})

-- | Amount of delay (seconds) to enforce on the playback of live content. If not specified, there will be no time delay in effect for the OriginEndpoint.
coerrsTimeDelaySeconds :: Lens' CreateOriginEndpointResponse (Maybe Int)
coerrsTimeDelaySeconds = lens _coerrsTimeDelaySeconds (\s a -> s {_coerrsTimeDelaySeconds = a})

-- | Undocumented member.
coerrsAuthorization :: Lens' CreateOriginEndpointResponse (Maybe Authorization)
coerrsAuthorization = lens _coerrsAuthorization (\s a -> s {_coerrsAuthorization = a})

-- | The URL of the packaged OriginEndpoint for consumption.
coerrsURL :: Lens' CreateOriginEndpointResponse (Maybe Text)
coerrsURL = lens _coerrsURL (\s a -> s {_coerrsURL = a})

-- | Undocumented member.
coerrsHlsPackage :: Lens' CreateOriginEndpointResponse (Maybe HlsPackage)
coerrsHlsPackage = lens _coerrsHlsPackage (\s a -> s {_coerrsHlsPackage = a})

-- | -- | The response status code.
coerrsResponseStatus :: Lens' CreateOriginEndpointResponse Int
coerrsResponseStatus = lens _coerrsResponseStatus (\s a -> s {_coerrsResponseStatus = a})

instance NFData CreateOriginEndpointResponse
