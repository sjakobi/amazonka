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
-- Module      : Network.AWS.DMS.RebootReplicationInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reboots a replication instance. Rebooting results in a momentary outage, until the replication instance becomes available again.
module Network.AWS.DMS.RebootReplicationInstance
  ( -- * Creating a Request
    rebootReplicationInstance,
    RebootReplicationInstance,

    -- * Request Lenses
    rriForceFailover,
    rriReplicationInstanceARN,

    -- * Destructuring the Response
    rebootReplicationInstanceResponse,
    RebootReplicationInstanceResponse,

    -- * Response Lenses
    rrirrsReplicationInstance,
    rrirrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'rebootReplicationInstance' smart constructor.
data RebootReplicationInstance = RebootReplicationInstance'
  { _rriForceFailover ::
      !(Maybe Bool),
    _rriReplicationInstanceARN ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RebootReplicationInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rriForceFailover' - If this parameter is @true@ , the reboot is conducted through a Multi-AZ failover. (If the instance isn't configured for Multi-AZ, then you can't specify @true@ .)
--
-- * 'rriReplicationInstanceARN' - The Amazon Resource Name (ARN) of the replication instance.
rebootReplicationInstance ::
  -- | 'rriReplicationInstanceARN'
  Text ->
  RebootReplicationInstance
rebootReplicationInstance pReplicationInstanceARN_ =
  RebootReplicationInstance'
    { _rriForceFailover =
        Nothing,
      _rriReplicationInstanceARN =
        pReplicationInstanceARN_
    }

-- | If this parameter is @true@ , the reboot is conducted through a Multi-AZ failover. (If the instance isn't configured for Multi-AZ, then you can't specify @true@ .)
rriForceFailover :: Lens' RebootReplicationInstance (Maybe Bool)
rriForceFailover = lens _rriForceFailover (\s a -> s {_rriForceFailover = a})

-- | The Amazon Resource Name (ARN) of the replication instance.
rriReplicationInstanceARN :: Lens' RebootReplicationInstance Text
rriReplicationInstanceARN = lens _rriReplicationInstanceARN (\s a -> s {_rriReplicationInstanceARN = a})

instance AWSRequest RebootReplicationInstance where
  type
    Rs RebootReplicationInstance =
      RebootReplicationInstanceResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          RebootReplicationInstanceResponse'
            <$> (x .?> "ReplicationInstance")
            <*> (pure (fromEnum s))
      )

instance Hashable RebootReplicationInstance

instance NFData RebootReplicationInstance

instance ToHeaders RebootReplicationInstance where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.RebootReplicationInstance" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RebootReplicationInstance where
  toJSON RebootReplicationInstance' {..} =
    object
      ( catMaybes
          [ ("ForceFailover" .=) <$> _rriForceFailover,
            Just
              ( "ReplicationInstanceArn"
                  .= _rriReplicationInstanceARN
              )
          ]
      )

instance ToPath RebootReplicationInstance where
  toPath = const "/"

instance ToQuery RebootReplicationInstance where
  toQuery = const mempty

-- | /See:/ 'rebootReplicationInstanceResponse' smart constructor.
data RebootReplicationInstanceResponse = RebootReplicationInstanceResponse'
  { _rrirrsReplicationInstance ::
      !( Maybe
           ReplicationInstance
       ),
    _rrirrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RebootReplicationInstanceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrirrsReplicationInstance' - The replication instance that is being rebooted.
--
-- * 'rrirrsResponseStatus' - -- | The response status code.
rebootReplicationInstanceResponse ::
  -- | 'rrirrsResponseStatus'
  Int ->
  RebootReplicationInstanceResponse
rebootReplicationInstanceResponse pResponseStatus_ =
  RebootReplicationInstanceResponse'
    { _rrirrsReplicationInstance =
        Nothing,
      _rrirrsResponseStatus = pResponseStatus_
    }

-- | The replication instance that is being rebooted.
rrirrsReplicationInstance :: Lens' RebootReplicationInstanceResponse (Maybe ReplicationInstance)
rrirrsReplicationInstance = lens _rrirrsReplicationInstance (\s a -> s {_rrirrsReplicationInstance = a})

-- | -- | The response status code.
rrirrsResponseStatus :: Lens' RebootReplicationInstanceResponse Int
rrirrsResponseStatus = lens _rrirrsResponseStatus (\s a -> s {_rrirrsResponseStatus = a})

instance NFData RebootReplicationInstanceResponse
