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
-- Module      : Network.AWS.DMS.ReloadTables
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reloads the target database table with the source data.
module Network.AWS.DMS.ReloadTables
  ( -- * Creating a Request
    reloadTables,
    ReloadTables,

    -- * Request Lenses
    rReloadOption,
    rReplicationTaskARN,
    rTablesToReload,

    -- * Destructuring the Response
    reloadTablesResponse,
    ReloadTablesResponse,

    -- * Response Lenses
    rtrrsReplicationTaskARN,
    rtrrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'reloadTables' smart constructor.
data ReloadTables = ReloadTables'
  { _rReloadOption ::
      !(Maybe ReloadOptionValue),
    _rReplicationTaskARN :: !Text,
    _rTablesToReload :: ![TableToReload]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReloadTables' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rReloadOption' - Options for reload. Specify @data-reload@ to reload the data and re-validate it if validation is enabled. Specify @validate-only@ to re-validate the table. This option applies only when validation is enabled for the task.  Valid values: data-reload, validate-only Default value is data-reload.
--
-- * 'rReplicationTaskARN' - The Amazon Resource Name (ARN) of the replication task.
--
-- * 'rTablesToReload' - The name and schema of the table to be reloaded.
reloadTables ::
  -- | 'rReplicationTaskARN'
  Text ->
  ReloadTables
reloadTables pReplicationTaskARN_ =
  ReloadTables'
    { _rReloadOption = Nothing,
      _rReplicationTaskARN = pReplicationTaskARN_,
      _rTablesToReload = mempty
    }

-- | Options for reload. Specify @data-reload@ to reload the data and re-validate it if validation is enabled. Specify @validate-only@ to re-validate the table. This option applies only when validation is enabled for the task.  Valid values: data-reload, validate-only Default value is data-reload.
rReloadOption :: Lens' ReloadTables (Maybe ReloadOptionValue)
rReloadOption = lens _rReloadOption (\s a -> s {_rReloadOption = a})

-- | The Amazon Resource Name (ARN) of the replication task.
rReplicationTaskARN :: Lens' ReloadTables Text
rReplicationTaskARN = lens _rReplicationTaskARN (\s a -> s {_rReplicationTaskARN = a})

-- | The name and schema of the table to be reloaded.
rTablesToReload :: Lens' ReloadTables [TableToReload]
rTablesToReload = lens _rTablesToReload (\s a -> s {_rTablesToReload = a}) . _Coerce

instance AWSRequest ReloadTables where
  type Rs ReloadTables = ReloadTablesResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          ReloadTablesResponse'
            <$> (x .?> "ReplicationTaskArn") <*> (pure (fromEnum s))
      )

instance Hashable ReloadTables

instance NFData ReloadTables

instance ToHeaders ReloadTables where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonDMSv20160101.ReloadTables" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ReloadTables where
  toJSON ReloadTables' {..} =
    object
      ( catMaybes
          [ ("ReloadOption" .=) <$> _rReloadOption,
            Just ("ReplicationTaskArn" .= _rReplicationTaskARN),
            Just ("TablesToReload" .= _rTablesToReload)
          ]
      )

instance ToPath ReloadTables where
  toPath = const "/"

instance ToQuery ReloadTables where
  toQuery = const mempty

-- | /See:/ 'reloadTablesResponse' smart constructor.
data ReloadTablesResponse = ReloadTablesResponse'
  { _rtrrsReplicationTaskARN ::
      !(Maybe Text),
    _rtrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReloadTablesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtrrsReplicationTaskARN' - The Amazon Resource Name (ARN) of the replication task.
--
-- * 'rtrrsResponseStatus' - -- | The response status code.
reloadTablesResponse ::
  -- | 'rtrrsResponseStatus'
  Int ->
  ReloadTablesResponse
reloadTablesResponse pResponseStatus_ =
  ReloadTablesResponse'
    { _rtrrsReplicationTaskARN =
        Nothing,
      _rtrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the replication task.
rtrrsReplicationTaskARN :: Lens' ReloadTablesResponse (Maybe Text)
rtrrsReplicationTaskARN = lens _rtrrsReplicationTaskARN (\s a -> s {_rtrrsReplicationTaskARN = a})

-- | -- | The response status code.
rtrrsResponseStatus :: Lens' ReloadTablesResponse Int
rtrrsResponseStatus = lens _rtrrsResponseStatus (\s a -> s {_rtrrsResponseStatus = a})

instance NFData ReloadTablesResponse
