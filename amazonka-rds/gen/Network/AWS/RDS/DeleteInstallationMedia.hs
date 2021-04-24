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
-- Module      : Network.AWS.RDS.DeleteInstallationMedia
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the installation medium for a DB engine that requires an on-premises customer provided license, such as Microsoft SQL Server.
module Network.AWS.RDS.DeleteInstallationMedia
  ( -- * Creating a Request
    deleteInstallationMedia,
    DeleteInstallationMedia,

    -- * Request Lenses
    dimInstallationMediaId,

    -- * Destructuring the Response
    installationMedia,
    InstallationMedia,

    -- * Response Lenses
    imStatus,
    imCustomAvailabilityZoneId,
    imInstallationMediaId,
    imEngineVersion,
    imOSInstallationMediaPath,
    imFailureCause,
    imEngine,
    imEngineInstallationMediaPath,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteInstallationMedia' smart constructor.
newtype DeleteInstallationMedia = DeleteInstallationMedia'
  { _dimInstallationMediaId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteInstallationMedia' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dimInstallationMediaId' - The installation medium ID.
deleteInstallationMedia ::
  -- | 'dimInstallationMediaId'
  Text ->
  DeleteInstallationMedia
deleteInstallationMedia pInstallationMediaId_ =
  DeleteInstallationMedia'
    { _dimInstallationMediaId =
        pInstallationMediaId_
    }

-- | The installation medium ID.
dimInstallationMediaId :: Lens' DeleteInstallationMedia Text
dimInstallationMediaId = lens _dimInstallationMediaId (\s a -> s {_dimInstallationMediaId = a})

instance AWSRequest DeleteInstallationMedia where
  type Rs DeleteInstallationMedia = InstallationMedia
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DeleteInstallationMediaResult"
      (\s h x -> parseXML x)

instance Hashable DeleteInstallationMedia

instance NFData DeleteInstallationMedia

instance ToHeaders DeleteInstallationMedia where
  toHeaders = const mempty

instance ToPath DeleteInstallationMedia where
  toPath = const "/"

instance ToQuery DeleteInstallationMedia where
  toQuery DeleteInstallationMedia' {..} =
    mconcat
      [ "Action"
          =: ("DeleteInstallationMedia" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "InstallationMediaId" =: _dimInstallationMediaId
      ]
