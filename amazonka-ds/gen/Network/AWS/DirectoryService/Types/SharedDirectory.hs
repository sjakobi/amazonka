{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.SharedDirectory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.SharedDirectory where

import Network.AWS.DirectoryService.Types.ShareMethod
import Network.AWS.DirectoryService.Types.ShareStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details about the shared directory in the directory owner account for which the share request in the directory consumer account has been accepted.
--
--
--
-- /See:/ 'sharedDirectory' smart constructor.
data SharedDirectory = SharedDirectory'
  { _sCreatedDateTime ::
      !(Maybe POSIX),
    _sShareNotes ::
      !(Maybe (Sensitive Text)),
    _sLastUpdatedDateTime :: !(Maybe POSIX),
    _sSharedAccountId :: !(Maybe Text),
    _sOwnerDirectoryId :: !(Maybe Text),
    _sShareMethod :: !(Maybe ShareMethod),
    _sShareStatus :: !(Maybe ShareStatus),
    _sOwnerAccountId :: !(Maybe Text),
    _sSharedDirectoryId :: !(Maybe Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SharedDirectory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sCreatedDateTime' - The date and time that the shared directory was created.
--
-- * 'sShareNotes' - A directory share request that is sent by the directory owner to the directory consumer. The request includes a typed message to help the directory consumer administrator determine whether to approve or reject the share invitation.
--
-- * 'sLastUpdatedDateTime' - The date and time that the shared directory was last updated.
--
-- * 'sSharedAccountId' - Identifier of the directory consumer account that has access to the shared directory (@OwnerDirectoryId@ ) in the directory owner account.
--
-- * 'sOwnerDirectoryId' - Identifier of the directory in the directory owner account.
--
-- * 'sShareMethod' - The method used when sharing a directory to determine whether the directory should be shared within your AWS organization (@ORGANIZATIONS@ ) or with any AWS account by sending a shared directory request (@HANDSHAKE@ ).
--
-- * 'sShareStatus' - Current directory status of the shared AWS Managed Microsoft AD directory.
--
-- * 'sOwnerAccountId' - Identifier of the directory owner account, which contains the directory that has been shared to the consumer account.
--
-- * 'sSharedDirectoryId' - Identifier of the shared directory in the directory consumer account. This identifier is different for each directory owner account.
sharedDirectory ::
  SharedDirectory
sharedDirectory =
  SharedDirectory'
    { _sCreatedDateTime = Nothing,
      _sShareNotes = Nothing,
      _sLastUpdatedDateTime = Nothing,
      _sSharedAccountId = Nothing,
      _sOwnerDirectoryId = Nothing,
      _sShareMethod = Nothing,
      _sShareStatus = Nothing,
      _sOwnerAccountId = Nothing,
      _sSharedDirectoryId = Nothing
    }

-- | The date and time that the shared directory was created.
sCreatedDateTime :: Lens' SharedDirectory (Maybe UTCTime)
sCreatedDateTime = lens _sCreatedDateTime (\s a -> s {_sCreatedDateTime = a}) . mapping _Time

-- | A directory share request that is sent by the directory owner to the directory consumer. The request includes a typed message to help the directory consumer administrator determine whether to approve or reject the share invitation.
sShareNotes :: Lens' SharedDirectory (Maybe Text)
sShareNotes = lens _sShareNotes (\s a -> s {_sShareNotes = a}) . mapping _Sensitive

-- | The date and time that the shared directory was last updated.
sLastUpdatedDateTime :: Lens' SharedDirectory (Maybe UTCTime)
sLastUpdatedDateTime = lens _sLastUpdatedDateTime (\s a -> s {_sLastUpdatedDateTime = a}) . mapping _Time

-- | Identifier of the directory consumer account that has access to the shared directory (@OwnerDirectoryId@ ) in the directory owner account.
sSharedAccountId :: Lens' SharedDirectory (Maybe Text)
sSharedAccountId = lens _sSharedAccountId (\s a -> s {_sSharedAccountId = a})

-- | Identifier of the directory in the directory owner account.
sOwnerDirectoryId :: Lens' SharedDirectory (Maybe Text)
sOwnerDirectoryId = lens _sOwnerDirectoryId (\s a -> s {_sOwnerDirectoryId = a})

-- | The method used when sharing a directory to determine whether the directory should be shared within your AWS organization (@ORGANIZATIONS@ ) or with any AWS account by sending a shared directory request (@HANDSHAKE@ ).
sShareMethod :: Lens' SharedDirectory (Maybe ShareMethod)
sShareMethod = lens _sShareMethod (\s a -> s {_sShareMethod = a})

-- | Current directory status of the shared AWS Managed Microsoft AD directory.
sShareStatus :: Lens' SharedDirectory (Maybe ShareStatus)
sShareStatus = lens _sShareStatus (\s a -> s {_sShareStatus = a})

-- | Identifier of the directory owner account, which contains the directory that has been shared to the consumer account.
sOwnerAccountId :: Lens' SharedDirectory (Maybe Text)
sOwnerAccountId = lens _sOwnerAccountId (\s a -> s {_sOwnerAccountId = a})

-- | Identifier of the shared directory in the directory consumer account. This identifier is different for each directory owner account.
sSharedDirectoryId :: Lens' SharedDirectory (Maybe Text)
sSharedDirectoryId = lens _sSharedDirectoryId (\s a -> s {_sSharedDirectoryId = a})

instance FromJSON SharedDirectory where
  parseJSON =
    withObject
      "SharedDirectory"
      ( \x ->
          SharedDirectory'
            <$> (x .:? "CreatedDateTime")
            <*> (x .:? "ShareNotes")
            <*> (x .:? "LastUpdatedDateTime")
            <*> (x .:? "SharedAccountId")
            <*> (x .:? "OwnerDirectoryId")
            <*> (x .:? "ShareMethod")
            <*> (x .:? "ShareStatus")
            <*> (x .:? "OwnerAccountId")
            <*> (x .:? "SharedDirectoryId")
      )

instance Hashable SharedDirectory

instance NFData SharedDirectory
