{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.OriginEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.OriginEndpoint where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types.Authorization
import Network.AWS.MediaPackage.Types.CmafPackage
import Network.AWS.MediaPackage.Types.DashPackage
import Network.AWS.MediaPackage.Types.HlsPackage
import Network.AWS.MediaPackage.Types.MssPackage
import Network.AWS.MediaPackage.Types.Origination
import Network.AWS.Prelude

-- | An OriginEndpoint resource configuration.
--
-- /See:/ 'originEndpoint' smart constructor.
data OriginEndpoint = OriginEndpoint'
  { _oeDashPackage ::
      !(Maybe DashPackage),
    _oeStartoverWindowSeconds :: !(Maybe Int),
    _oeOrigination :: !(Maybe Origination),
    _oeChannelId :: !(Maybe Text),
    _oeCmafPackage :: !(Maybe CmafPackage),
    _oeManifestName :: !(Maybe Text),
    _oeARN :: !(Maybe Text),
    _oeId :: !(Maybe Text),
    _oeWhitelist :: !(Maybe [Text]),
    _oeMssPackage :: !(Maybe MssPackage),
    _oeTags :: !(Maybe (Map Text Text)),
    _oeDescription :: !(Maybe Text),
    _oeTimeDelaySeconds :: !(Maybe Int),
    _oeAuthorization ::
      !(Maybe Authorization),
    _oeURL :: !(Maybe Text),
    _oeHlsPackage :: !(Maybe HlsPackage)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OriginEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oeDashPackage' - Undocumented member.
--
-- * 'oeStartoverWindowSeconds' - Maximum duration (seconds) of content to retain for startover playback. If not specified, startover playback will be disabled for the OriginEndpoint.
--
-- * 'oeOrigination' - Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
--
-- * 'oeChannelId' - The ID of the Channel the OriginEndpoint is associated with.
--
-- * 'oeCmafPackage' - Undocumented member.
--
-- * 'oeManifestName' - A short string appended to the end of the OriginEndpoint URL.
--
-- * 'oeARN' - The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
--
-- * 'oeId' - The ID of the OriginEndpoint.
--
-- * 'oeWhitelist' - A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
--
-- * 'oeMssPackage' - Undocumented member.
--
-- * 'oeTags' - Undocumented member.
--
-- * 'oeDescription' - A short text description of the OriginEndpoint.
--
-- * 'oeTimeDelaySeconds' - Amount of delay (seconds) to enforce on the playback of live content. If not specified, there will be no time delay in effect for the OriginEndpoint.
--
-- * 'oeAuthorization' - Undocumented member.
--
-- * 'oeURL' - The URL of the packaged OriginEndpoint for consumption.
--
-- * 'oeHlsPackage' - Undocumented member.
originEndpoint ::
  OriginEndpoint
originEndpoint =
  OriginEndpoint'
    { _oeDashPackage = Nothing,
      _oeStartoverWindowSeconds = Nothing,
      _oeOrigination = Nothing,
      _oeChannelId = Nothing,
      _oeCmafPackage = Nothing,
      _oeManifestName = Nothing,
      _oeARN = Nothing,
      _oeId = Nothing,
      _oeWhitelist = Nothing,
      _oeMssPackage = Nothing,
      _oeTags = Nothing,
      _oeDescription = Nothing,
      _oeTimeDelaySeconds = Nothing,
      _oeAuthorization = Nothing,
      _oeURL = Nothing,
      _oeHlsPackage = Nothing
    }

-- | Undocumented member.
oeDashPackage :: Lens' OriginEndpoint (Maybe DashPackage)
oeDashPackage = lens _oeDashPackage (\s a -> s {_oeDashPackage = a})

-- | Maximum duration (seconds) of content to retain for startover playback. If not specified, startover playback will be disabled for the OriginEndpoint.
oeStartoverWindowSeconds :: Lens' OriginEndpoint (Maybe Int)
oeStartoverWindowSeconds = lens _oeStartoverWindowSeconds (\s a -> s {_oeStartoverWindowSeconds = a})

-- | Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
oeOrigination :: Lens' OriginEndpoint (Maybe Origination)
oeOrigination = lens _oeOrigination (\s a -> s {_oeOrigination = a})

-- | The ID of the Channel the OriginEndpoint is associated with.
oeChannelId :: Lens' OriginEndpoint (Maybe Text)
oeChannelId = lens _oeChannelId (\s a -> s {_oeChannelId = a})

-- | Undocumented member.
oeCmafPackage :: Lens' OriginEndpoint (Maybe CmafPackage)
oeCmafPackage = lens _oeCmafPackage (\s a -> s {_oeCmafPackage = a})

-- | A short string appended to the end of the OriginEndpoint URL.
oeManifestName :: Lens' OriginEndpoint (Maybe Text)
oeManifestName = lens _oeManifestName (\s a -> s {_oeManifestName = a})

-- | The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
oeARN :: Lens' OriginEndpoint (Maybe Text)
oeARN = lens _oeARN (\s a -> s {_oeARN = a})

-- | The ID of the OriginEndpoint.
oeId :: Lens' OriginEndpoint (Maybe Text)
oeId = lens _oeId (\s a -> s {_oeId = a})

-- | A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
oeWhitelist :: Lens' OriginEndpoint [Text]
oeWhitelist = lens _oeWhitelist (\s a -> s {_oeWhitelist = a}) . _Default . _Coerce

-- | Undocumented member.
oeMssPackage :: Lens' OriginEndpoint (Maybe MssPackage)
oeMssPackage = lens _oeMssPackage (\s a -> s {_oeMssPackage = a})

-- | Undocumented member.
oeTags :: Lens' OriginEndpoint (HashMap Text Text)
oeTags = lens _oeTags (\s a -> s {_oeTags = a}) . _Default . _Map

-- | A short text description of the OriginEndpoint.
oeDescription :: Lens' OriginEndpoint (Maybe Text)
oeDescription = lens _oeDescription (\s a -> s {_oeDescription = a})

-- | Amount of delay (seconds) to enforce on the playback of live content. If not specified, there will be no time delay in effect for the OriginEndpoint.
oeTimeDelaySeconds :: Lens' OriginEndpoint (Maybe Int)
oeTimeDelaySeconds = lens _oeTimeDelaySeconds (\s a -> s {_oeTimeDelaySeconds = a})

-- | Undocumented member.
oeAuthorization :: Lens' OriginEndpoint (Maybe Authorization)
oeAuthorization = lens _oeAuthorization (\s a -> s {_oeAuthorization = a})

-- | The URL of the packaged OriginEndpoint for consumption.
oeURL :: Lens' OriginEndpoint (Maybe Text)
oeURL = lens _oeURL (\s a -> s {_oeURL = a})

-- | Undocumented member.
oeHlsPackage :: Lens' OriginEndpoint (Maybe HlsPackage)
oeHlsPackage = lens _oeHlsPackage (\s a -> s {_oeHlsPackage = a})

instance FromJSON OriginEndpoint where
  parseJSON =
    withObject
      "OriginEndpoint"
      ( \x ->
          OriginEndpoint'
            <$> (x .:? "dashPackage")
            <*> (x .:? "startoverWindowSeconds")
            <*> (x .:? "origination")
            <*> (x .:? "channelId")
            <*> (x .:? "cmafPackage")
            <*> (x .:? "manifestName")
            <*> (x .:? "arn")
            <*> (x .:? "id")
            <*> (x .:? "whitelist" .!= mempty)
            <*> (x .:? "mssPackage")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "description")
            <*> (x .:? "timeDelaySeconds")
            <*> (x .:? "authorization")
            <*> (x .:? "url")
            <*> (x .:? "hlsPackage")
      )

instance Hashable OriginEndpoint

instance NFData OriginEndpoint
