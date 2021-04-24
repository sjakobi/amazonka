{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.DiskImageDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DiskImageDescription where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.DiskImageFormat
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a disk image.
--
--
--
-- /See:/ 'diskImageDescription' smart constructor.
data DiskImageDescription = DiskImageDescription'
  { _didFormat ::
      !(Maybe DiskImageFormat),
    _didImportManifestURL ::
      !(Maybe Text),
    _didChecksum :: !(Maybe Text),
    _didSize :: !(Maybe Integer)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DiskImageDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'didFormat' - The disk image format.
--
-- * 'didImportManifestURL' - A presigned URL for the import manifest stored in Amazon S3. For information about creating a presigned URL for an Amazon S3 object, read the "Query String Request Authentication Alternative" section of the <https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html Authenticating REST Requests> topic in the /Amazon Simple Storage Service Developer Guide/ . For information about the import manifest referenced by this API action, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html VM Import Manifest> .
--
-- * 'didChecksum' - The checksum computed for the disk image.
--
-- * 'didSize' - The size of the disk image, in GiB.
diskImageDescription ::
  DiskImageDescription
diskImageDescription =
  DiskImageDescription'
    { _didFormat = Nothing,
      _didImportManifestURL = Nothing,
      _didChecksum = Nothing,
      _didSize = Nothing
    }

-- | The disk image format.
didFormat :: Lens' DiskImageDescription (Maybe DiskImageFormat)
didFormat = lens _didFormat (\s a -> s {_didFormat = a})

-- | A presigned URL for the import manifest stored in Amazon S3. For information about creating a presigned URL for an Amazon S3 object, read the "Query String Request Authentication Alternative" section of the <https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html Authenticating REST Requests> topic in the /Amazon Simple Storage Service Developer Guide/ . For information about the import manifest referenced by this API action, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html VM Import Manifest> .
didImportManifestURL :: Lens' DiskImageDescription (Maybe Text)
didImportManifestURL = lens _didImportManifestURL (\s a -> s {_didImportManifestURL = a})

-- | The checksum computed for the disk image.
didChecksum :: Lens' DiskImageDescription (Maybe Text)
didChecksum = lens _didChecksum (\s a -> s {_didChecksum = a})

-- | The size of the disk image, in GiB.
didSize :: Lens' DiskImageDescription (Maybe Integer)
didSize = lens _didSize (\s a -> s {_didSize = a})

instance FromXML DiskImageDescription where
  parseXML x =
    DiskImageDescription'
      <$> (x .@? "format")
      <*> (x .@? "importManifestUrl")
      <*> (x .@? "checksum")
      <*> (x .@? "size")

instance Hashable DiskImageDescription

instance NFData DiskImageDescription
