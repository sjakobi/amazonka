{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ClientData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClientData where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the client-specific data.
--
--
--
-- /See:/ 'clientData' smart constructor.
data ClientData = ClientData'
  { _cdUploadEnd ::
      !(Maybe ISO8601),
    _cdComment :: !(Maybe Text),
    _cdUploadSize :: !(Maybe Double),
    _cdUploadStart :: !(Maybe ISO8601)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ClientData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdUploadEnd' - The time that the disk upload ends.
--
-- * 'cdComment' - A user-defined comment about the disk upload.
--
-- * 'cdUploadSize' - The size of the uploaded disk image, in GiB.
--
-- * 'cdUploadStart' - The time that the disk upload starts.
clientData ::
  ClientData
clientData =
  ClientData'
    { _cdUploadEnd = Nothing,
      _cdComment = Nothing,
      _cdUploadSize = Nothing,
      _cdUploadStart = Nothing
    }

-- | The time that the disk upload ends.
cdUploadEnd :: Lens' ClientData (Maybe UTCTime)
cdUploadEnd = lens _cdUploadEnd (\s a -> s {_cdUploadEnd = a}) . mapping _Time

-- | A user-defined comment about the disk upload.
cdComment :: Lens' ClientData (Maybe Text)
cdComment = lens _cdComment (\s a -> s {_cdComment = a})

-- | The size of the uploaded disk image, in GiB.
cdUploadSize :: Lens' ClientData (Maybe Double)
cdUploadSize = lens _cdUploadSize (\s a -> s {_cdUploadSize = a})

-- | The time that the disk upload starts.
cdUploadStart :: Lens' ClientData (Maybe UTCTime)
cdUploadStart = lens _cdUploadStart (\s a -> s {_cdUploadStart = a}) . mapping _Time

instance Hashable ClientData

instance NFData ClientData

instance ToQuery ClientData where
  toQuery ClientData' {..} =
    mconcat
      [ "UploadEnd" =: _cdUploadEnd,
        "Comment" =: _cdComment,
        "UploadSize" =: _cdUploadSize,
        "UploadStart" =: _cdUploadStart
      ]
