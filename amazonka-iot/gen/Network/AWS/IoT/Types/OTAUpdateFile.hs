{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.OTAUpdateFile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.OTAUpdateFile where

import Network.AWS.IoT.Types.CodeSigning
import Network.AWS.IoT.Types.FileLocation
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a file to be associated with an OTA update.
--
--
--
-- /See:/ 'oTAUpdateFile' smart constructor.
data OTAUpdateFile = OTAUpdateFile'
  { _otaufFileVersion ::
      !(Maybe Text),
    _otaufFileLocation :: !(Maybe FileLocation),
    _otaufAttributes ::
      !(Maybe (Map Text Text)),
    _otaufFileName :: !(Maybe Text),
    _otaufFileType :: !(Maybe Nat),
    _otaufCodeSigning :: !(Maybe CodeSigning)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OTAUpdateFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'otaufFileVersion' - The file version.
--
-- * 'otaufFileLocation' - The location of the updated firmware.
--
-- * 'otaufAttributes' - A list of name/attribute pairs.
--
-- * 'otaufFileName' - The name of the file.
--
-- * 'otaufFileType' - An integer value you can include in the job document to allow your devices to identify the type of file received from the cloud.
--
-- * 'otaufCodeSigning' - The code signing method of the file.
oTAUpdateFile ::
  OTAUpdateFile
oTAUpdateFile =
  OTAUpdateFile'
    { _otaufFileVersion = Nothing,
      _otaufFileLocation = Nothing,
      _otaufAttributes = Nothing,
      _otaufFileName = Nothing,
      _otaufFileType = Nothing,
      _otaufCodeSigning = Nothing
    }

-- | The file version.
otaufFileVersion :: Lens' OTAUpdateFile (Maybe Text)
otaufFileVersion = lens _otaufFileVersion (\s a -> s {_otaufFileVersion = a})

-- | The location of the updated firmware.
otaufFileLocation :: Lens' OTAUpdateFile (Maybe FileLocation)
otaufFileLocation = lens _otaufFileLocation (\s a -> s {_otaufFileLocation = a})

-- | A list of name/attribute pairs.
otaufAttributes :: Lens' OTAUpdateFile (HashMap Text Text)
otaufAttributes = lens _otaufAttributes (\s a -> s {_otaufAttributes = a}) . _Default . _Map

-- | The name of the file.
otaufFileName :: Lens' OTAUpdateFile (Maybe Text)
otaufFileName = lens _otaufFileName (\s a -> s {_otaufFileName = a})

-- | An integer value you can include in the job document to allow your devices to identify the type of file received from the cloud.
otaufFileType :: Lens' OTAUpdateFile (Maybe Natural)
otaufFileType = lens _otaufFileType (\s a -> s {_otaufFileType = a}) . mapping _Nat

-- | The code signing method of the file.
otaufCodeSigning :: Lens' OTAUpdateFile (Maybe CodeSigning)
otaufCodeSigning = lens _otaufCodeSigning (\s a -> s {_otaufCodeSigning = a})

instance FromJSON OTAUpdateFile where
  parseJSON =
    withObject
      "OTAUpdateFile"
      ( \x ->
          OTAUpdateFile'
            <$> (x .:? "fileVersion")
            <*> (x .:? "fileLocation")
            <*> (x .:? "attributes" .!= mempty)
            <*> (x .:? "fileName")
            <*> (x .:? "fileType")
            <*> (x .:? "codeSigning")
      )

instance Hashable OTAUpdateFile

instance NFData OTAUpdateFile

instance ToJSON OTAUpdateFile where
  toJSON OTAUpdateFile' {..} =
    object
      ( catMaybes
          [ ("fileVersion" .=) <$> _otaufFileVersion,
            ("fileLocation" .=) <$> _otaufFileLocation,
            ("attributes" .=) <$> _otaufAttributes,
            ("fileName" .=) <$> _otaufFileName,
            ("fileType" .=) <$> _otaufFileType,
            ("codeSigning" .=) <$> _otaufCodeSigning
          ]
      )
