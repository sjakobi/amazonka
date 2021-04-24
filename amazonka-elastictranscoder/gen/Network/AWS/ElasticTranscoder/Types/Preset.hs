{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticTranscoder.Types.Preset
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticTranscoder.Types.Preset where

import Network.AWS.ElasticTranscoder.Types.AudioParameters
import Network.AWS.ElasticTranscoder.Types.Thumbnails
import Network.AWS.ElasticTranscoder.Types.VideoParameters
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Presets are templates that contain most of the settings for transcoding media files from one format to another. Elastic Transcoder includes some default presets for common formats, for example, several iPod and iPhone versions. You can also create your own presets for formats that aren't included among the default presets. You specify which preset you want to use when you create a job.
--
--
--
-- /See:/ 'preset' smart constructor.
data Preset = Preset'
  { _pContainer :: !(Maybe Text),
    _pARN :: !(Maybe Text),
    _pId :: !(Maybe Text),
    _pThumbnails :: !(Maybe Thumbnails),
    _pName :: !(Maybe Text),
    _pVideo :: !(Maybe VideoParameters),
    _pAudio :: !(Maybe AudioParameters),
    _pDescription :: !(Maybe Text),
    _pType :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Preset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pContainer' - The container type for the output file. Valid values include @flac@ , @flv@ , @fmp4@ , @gif@ , @mp3@ , @mp4@ , @mpg@ , @mxf@ , @oga@ , @ogg@ , @ts@ , and @webm@ .
--
-- * 'pARN' - The Amazon Resource Name (ARN) for the preset.
--
-- * 'pId' - Identifier for the new preset. You use this value to get settings for the preset or to delete it.
--
-- * 'pThumbnails' - A section of the response body that provides information about the thumbnail preset values, if any.
--
-- * 'pName' - The name of the preset.
--
-- * 'pVideo' - A section of the response body that provides information about the video preset values.
--
-- * 'pAudio' - A section of the response body that provides information about the audio preset values.
--
-- * 'pDescription' - A description of the preset.
--
-- * 'pType' - Whether the preset is a default preset provided by Elastic Transcoder (@System@ ) or a preset that you have defined (@Custom@ ).
preset ::
  Preset
preset =
  Preset'
    { _pContainer = Nothing,
      _pARN = Nothing,
      _pId = Nothing,
      _pThumbnails = Nothing,
      _pName = Nothing,
      _pVideo = Nothing,
      _pAudio = Nothing,
      _pDescription = Nothing,
      _pType = Nothing
    }

-- | The container type for the output file. Valid values include @flac@ , @flv@ , @fmp4@ , @gif@ , @mp3@ , @mp4@ , @mpg@ , @mxf@ , @oga@ , @ogg@ , @ts@ , and @webm@ .
pContainer :: Lens' Preset (Maybe Text)
pContainer = lens _pContainer (\s a -> s {_pContainer = a})

-- | The Amazon Resource Name (ARN) for the preset.
pARN :: Lens' Preset (Maybe Text)
pARN = lens _pARN (\s a -> s {_pARN = a})

-- | Identifier for the new preset. You use this value to get settings for the preset or to delete it.
pId :: Lens' Preset (Maybe Text)
pId = lens _pId (\s a -> s {_pId = a})

-- | A section of the response body that provides information about the thumbnail preset values, if any.
pThumbnails :: Lens' Preset (Maybe Thumbnails)
pThumbnails = lens _pThumbnails (\s a -> s {_pThumbnails = a})

-- | The name of the preset.
pName :: Lens' Preset (Maybe Text)
pName = lens _pName (\s a -> s {_pName = a})

-- | A section of the response body that provides information about the video preset values.
pVideo :: Lens' Preset (Maybe VideoParameters)
pVideo = lens _pVideo (\s a -> s {_pVideo = a})

-- | A section of the response body that provides information about the audio preset values.
pAudio :: Lens' Preset (Maybe AudioParameters)
pAudio = lens _pAudio (\s a -> s {_pAudio = a})

-- | A description of the preset.
pDescription :: Lens' Preset (Maybe Text)
pDescription = lens _pDescription (\s a -> s {_pDescription = a})

-- | Whether the preset is a default preset provided by Elastic Transcoder (@System@ ) or a preset that you have defined (@Custom@ ).
pType :: Lens' Preset (Maybe Text)
pType = lens _pType (\s a -> s {_pType = a})

instance FromJSON Preset where
  parseJSON =
    withObject
      "Preset"
      ( \x ->
          Preset'
            <$> (x .:? "Container")
            <*> (x .:? "Arn")
            <*> (x .:? "Id")
            <*> (x .:? "Thumbnails")
            <*> (x .:? "Name")
            <*> (x .:? "Video")
            <*> (x .:? "Audio")
            <*> (x .:? "Description")
            <*> (x .:? "Type")
      )

instance Hashable Preset

instance NFData Preset
