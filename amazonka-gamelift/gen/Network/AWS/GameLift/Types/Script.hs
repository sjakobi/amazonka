{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.Script
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.Script where

import Network.AWS.GameLift.Types.S3Location
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Properties describing a Realtime script.
--
--
-- __Related operations__
--
--     * 'CreateScript'
--
--     * 'ListScripts'
--
--     * 'DescribeScript'
--
--     * 'UpdateScript'
--
--     * 'DeleteScript'
--
--
--
--
-- /See:/ 'script' smart constructor.
data Script = Script'
  { _sCreationTime ::
      !(Maybe POSIX),
    _sScriptARN :: !(Maybe Text),
    _sVersion :: !(Maybe Text),
    _sName :: !(Maybe Text),
    _sStorageLocation :: !(Maybe S3Location),
    _sSizeOnDisk :: !(Maybe Nat),
    _sScriptId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Script' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sCreationTime' - A time stamp indicating when this data object was created. The format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
--
-- * 'sScriptARN' - Amazon Resource Name (<https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN> ) that is assigned to a GameLift script resource and uniquely identifies it. ARNs are unique across all Regions. In a GameLift script ARN, the resource ID matches the /ScriptId/ value.
--
-- * 'sVersion' - The version that is associated with a build or script. Version strings do not need to be unique.
--
-- * 'sName' - A descriptive label that is associated with a script. Script names do not need to be unique.
--
-- * 'sStorageLocation' - Undocumented member.
--
-- * 'sSizeOnDisk' - The file size of the uploaded Realtime script, expressed in bytes. When files are uploaded from an S3 location, this value remains at "0".
--
-- * 'sScriptId' - A unique identifier for a Realtime script
script ::
  Script
script =
  Script'
    { _sCreationTime = Nothing,
      _sScriptARN = Nothing,
      _sVersion = Nothing,
      _sName = Nothing,
      _sStorageLocation = Nothing,
      _sSizeOnDisk = Nothing,
      _sScriptId = Nothing
    }

-- | A time stamp indicating when this data object was created. The format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
sCreationTime :: Lens' Script (Maybe UTCTime)
sCreationTime = lens _sCreationTime (\s a -> s {_sCreationTime = a}) . mapping _Time

-- | Amazon Resource Name (<https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN> ) that is assigned to a GameLift script resource and uniquely identifies it. ARNs are unique across all Regions. In a GameLift script ARN, the resource ID matches the /ScriptId/ value.
sScriptARN :: Lens' Script (Maybe Text)
sScriptARN = lens _sScriptARN (\s a -> s {_sScriptARN = a})

-- | The version that is associated with a build or script. Version strings do not need to be unique.
sVersion :: Lens' Script (Maybe Text)
sVersion = lens _sVersion (\s a -> s {_sVersion = a})

-- | A descriptive label that is associated with a script. Script names do not need to be unique.
sName :: Lens' Script (Maybe Text)
sName = lens _sName (\s a -> s {_sName = a})

-- | Undocumented member.
sStorageLocation :: Lens' Script (Maybe S3Location)
sStorageLocation = lens _sStorageLocation (\s a -> s {_sStorageLocation = a})

-- | The file size of the uploaded Realtime script, expressed in bytes. When files are uploaded from an S3 location, this value remains at "0".
sSizeOnDisk :: Lens' Script (Maybe Natural)
sSizeOnDisk = lens _sSizeOnDisk (\s a -> s {_sSizeOnDisk = a}) . mapping _Nat

-- | A unique identifier for a Realtime script
sScriptId :: Lens' Script (Maybe Text)
sScriptId = lens _sScriptId (\s a -> s {_sScriptId = a})

instance FromJSON Script where
  parseJSON =
    withObject
      "Script"
      ( \x ->
          Script'
            <$> (x .:? "CreationTime")
            <*> (x .:? "ScriptArn")
            <*> (x .:? "Version")
            <*> (x .:? "Name")
            <*> (x .:? "StorageLocation")
            <*> (x .:? "SizeOnDisk")
            <*> (x .:? "ScriptId")
      )

instance Hashable Script

instance NFData Script
