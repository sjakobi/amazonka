{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.FileShareInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.FileShareInfo where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.StorageGateway.Types.FileShareType

-- | Describes a file share.
--
--
--
-- /See:/ 'fileShareInfo' smart constructor.
data FileShareInfo = FileShareInfo'
  { _fsiFileShareId ::
      !(Maybe Text),
    _fsiFileShareType :: !(Maybe FileShareType),
    _fsiFileShareStatus :: !(Maybe Text),
    _fsiFileShareARN :: !(Maybe Text),
    _fsiGatewayARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'FileShareInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fsiFileShareId' - Undocumented member.
--
-- * 'fsiFileShareType' - Undocumented member.
--
-- * 'fsiFileShareStatus' - Undocumented member.
--
-- * 'fsiFileShareARN' - Undocumented member.
--
-- * 'fsiGatewayARN' - Undocumented member.
fileShareInfo ::
  FileShareInfo
fileShareInfo =
  FileShareInfo'
    { _fsiFileShareId = Nothing,
      _fsiFileShareType = Nothing,
      _fsiFileShareStatus = Nothing,
      _fsiFileShareARN = Nothing,
      _fsiGatewayARN = Nothing
    }

-- | Undocumented member.
fsiFileShareId :: Lens' FileShareInfo (Maybe Text)
fsiFileShareId = lens _fsiFileShareId (\s a -> s {_fsiFileShareId = a})

-- | Undocumented member.
fsiFileShareType :: Lens' FileShareInfo (Maybe FileShareType)
fsiFileShareType = lens _fsiFileShareType (\s a -> s {_fsiFileShareType = a})

-- | Undocumented member.
fsiFileShareStatus :: Lens' FileShareInfo (Maybe Text)
fsiFileShareStatus = lens _fsiFileShareStatus (\s a -> s {_fsiFileShareStatus = a})

-- | Undocumented member.
fsiFileShareARN :: Lens' FileShareInfo (Maybe Text)
fsiFileShareARN = lens _fsiFileShareARN (\s a -> s {_fsiFileShareARN = a})

-- | Undocumented member.
fsiGatewayARN :: Lens' FileShareInfo (Maybe Text)
fsiGatewayARN = lens _fsiGatewayARN (\s a -> s {_fsiGatewayARN = a})

instance FromJSON FileShareInfo where
  parseJSON =
    withObject
      "FileShareInfo"
      ( \x ->
          FileShareInfo'
            <$> (x .:? "FileShareId")
            <*> (x .:? "FileShareType")
            <*> (x .:? "FileShareStatus")
            <*> (x .:? "FileShareARN")
            <*> (x .:? "GatewayARN")
      )

instance Hashable FileShareInfo

instance NFData FileShareInfo
