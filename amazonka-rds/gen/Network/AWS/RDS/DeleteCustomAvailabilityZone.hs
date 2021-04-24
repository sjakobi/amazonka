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
-- Module      : Network.AWS.RDS.DeleteCustomAvailabilityZone
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a custom Availability Zone (AZ).
--
--
-- A custom AZ is an on-premises AZ that is integrated with a VMware vSphere cluster.
--
-- For more information about RDS on VMware, see the <https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html RDS on VMware User Guide.>
module Network.AWS.RDS.DeleteCustomAvailabilityZone
  ( -- * Creating a Request
    deleteCustomAvailabilityZone,
    DeleteCustomAvailabilityZone,

    -- * Request Lenses
    dcazCustomAvailabilityZoneId,

    -- * Destructuring the Response
    deleteCustomAvailabilityZoneResponse,
    DeleteCustomAvailabilityZoneResponse,

    -- * Response Lenses
    dcazrrsCustomAvailabilityZone,
    dcazrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteCustomAvailabilityZone' smart constructor.
newtype DeleteCustomAvailabilityZone = DeleteCustomAvailabilityZone'
  { _dcazCustomAvailabilityZoneId ::
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

-- | Creates a value of 'DeleteCustomAvailabilityZone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcazCustomAvailabilityZoneId' - The custom AZ identifier.
deleteCustomAvailabilityZone ::
  -- | 'dcazCustomAvailabilityZoneId'
  Text ->
  DeleteCustomAvailabilityZone
deleteCustomAvailabilityZone
  pCustomAvailabilityZoneId_ =
    DeleteCustomAvailabilityZone'
      { _dcazCustomAvailabilityZoneId =
          pCustomAvailabilityZoneId_
      }

-- | The custom AZ identifier.
dcazCustomAvailabilityZoneId :: Lens' DeleteCustomAvailabilityZone Text
dcazCustomAvailabilityZoneId = lens _dcazCustomAvailabilityZoneId (\s a -> s {_dcazCustomAvailabilityZoneId = a})

instance AWSRequest DeleteCustomAvailabilityZone where
  type
    Rs DeleteCustomAvailabilityZone =
      DeleteCustomAvailabilityZoneResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DeleteCustomAvailabilityZoneResult"
      ( \s h x ->
          DeleteCustomAvailabilityZoneResponse'
            <$> (x .@? "CustomAvailabilityZone")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteCustomAvailabilityZone

instance NFData DeleteCustomAvailabilityZone

instance ToHeaders DeleteCustomAvailabilityZone where
  toHeaders = const mempty

instance ToPath DeleteCustomAvailabilityZone where
  toPath = const "/"

instance ToQuery DeleteCustomAvailabilityZone where
  toQuery DeleteCustomAvailabilityZone' {..} =
    mconcat
      [ "Action"
          =: ("DeleteCustomAvailabilityZone" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "CustomAvailabilityZoneId"
          =: _dcazCustomAvailabilityZoneId
      ]

-- | /See:/ 'deleteCustomAvailabilityZoneResponse' smart constructor.
data DeleteCustomAvailabilityZoneResponse = DeleteCustomAvailabilityZoneResponse'
  { _dcazrrsCustomAvailabilityZone ::
      !( Maybe
           CustomAvailabilityZone
       ),
    _dcazrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteCustomAvailabilityZoneResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcazrrsCustomAvailabilityZone' - Undocumented member.
--
-- * 'dcazrrsResponseStatus' - -- | The response status code.
deleteCustomAvailabilityZoneResponse ::
  -- | 'dcazrrsResponseStatus'
  Int ->
  DeleteCustomAvailabilityZoneResponse
deleteCustomAvailabilityZoneResponse pResponseStatus_ =
  DeleteCustomAvailabilityZoneResponse'
    { _dcazrrsCustomAvailabilityZone =
        Nothing,
      _dcazrrsResponseStatus =
        pResponseStatus_
    }

-- | Undocumented member.
dcazrrsCustomAvailabilityZone :: Lens' DeleteCustomAvailabilityZoneResponse (Maybe CustomAvailabilityZone)
dcazrrsCustomAvailabilityZone = lens _dcazrrsCustomAvailabilityZone (\s a -> s {_dcazrrsCustomAvailabilityZone = a})

-- | -- | The response status code.
dcazrrsResponseStatus :: Lens' DeleteCustomAvailabilityZoneResponse Int
dcazrrsResponseStatus = lens _dcazrrsResponseStatus (\s a -> s {_dcazrrsResponseStatus = a})

instance NFData DeleteCustomAvailabilityZoneResponse
