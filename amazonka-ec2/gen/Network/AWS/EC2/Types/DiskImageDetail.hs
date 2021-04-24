{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.DiskImageDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DiskImageDetail where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.DiskImageFormat
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a disk image.
--
--
--
-- /See:/ 'diskImageDetail' smart constructor.
data DiskImageDetail = DiskImageDetail'
  { _dBytes ::
      !Integer,
    _dFormat :: !DiskImageFormat,
    _dImportManifestURL :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DiskImageDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dBytes' - The size of the disk image, in GiB.
--
-- * 'dFormat' - The disk image format.
--
-- * 'dImportManifestURL' - A presigned URL for the import manifest stored in Amazon S3 and presented here as an Amazon S3 presigned URL. For information about creating a presigned URL for an Amazon S3 object, read the "Query String Request Authentication Alternative" section of the <https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html Authenticating REST Requests> topic in the /Amazon Simple Storage Service Developer Guide/ . For information about the import manifest referenced by this API action, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html VM Import Manifest> .
diskImageDetail ::
  -- | 'dBytes'
  Integer ->
  -- | 'dFormat'
  DiskImageFormat ->
  -- | 'dImportManifestURL'
  Text ->
  DiskImageDetail
diskImageDetail pBytes_ pFormat_ pImportManifestURL_ =
  DiskImageDetail'
    { _dBytes = pBytes_,
      _dFormat = pFormat_,
      _dImportManifestURL = pImportManifestURL_
    }

-- | The size of the disk image, in GiB.
dBytes :: Lens' DiskImageDetail Integer
dBytes = lens _dBytes (\s a -> s {_dBytes = a})

-- | The disk image format.
dFormat :: Lens' DiskImageDetail DiskImageFormat
dFormat = lens _dFormat (\s a -> s {_dFormat = a})

-- | A presigned URL for the import manifest stored in Amazon S3 and presented here as an Amazon S3 presigned URL. For information about creating a presigned URL for an Amazon S3 object, read the "Query String Request Authentication Alternative" section of the <https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html Authenticating REST Requests> topic in the /Amazon Simple Storage Service Developer Guide/ . For information about the import manifest referenced by this API action, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html VM Import Manifest> .
dImportManifestURL :: Lens' DiskImageDetail Text
dImportManifestURL = lens _dImportManifestURL (\s a -> s {_dImportManifestURL = a})

instance Hashable DiskImageDetail

instance NFData DiskImageDetail

instance ToQuery DiskImageDetail where
  toQuery DiskImageDetail' {..} =
    mconcat
      [ "Bytes" =: _dBytes,
        "Format" =: _dFormat,
        "ImportManifestUrl" =: _dImportManifestURL
      ]
