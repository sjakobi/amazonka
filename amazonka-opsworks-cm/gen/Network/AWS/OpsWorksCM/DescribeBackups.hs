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
-- Module      : Network.AWS.OpsWorksCM.DescribeBackups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes backups. The results are ordered by time, with newest backups first. If you do not specify a BackupId or ServerName, the command returns all backups.
--
--
-- This operation is synchronous.
--
-- A @ResourceNotFoundException@ is thrown when the backup does not exist. A @ValidationException@ is raised when parameters of the request are not valid.
--
--
-- This operation returns paginated results.
module Network.AWS.OpsWorksCM.DescribeBackups
  ( -- * Creating a Request
    describeBackups,
    DescribeBackups,

    -- * Request Lenses
    dbsNextToken,
    dbsMaxResults,
    dbsBackupId,
    dbsServerName,

    -- * Destructuring the Response
    describeBackupsResponse,
    DescribeBackupsResponse,

    -- * Response Lenses
    desrsNextToken,
    desrsBackups,
    desrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorksCM.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeBackups' smart constructor.
data DescribeBackups = DescribeBackups'
  { _dbsNextToken ::
      !(Maybe Text),
    _dbsMaxResults :: !(Maybe Nat),
    _dbsBackupId :: !(Maybe Text),
    _dbsServerName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeBackups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbsNextToken' - This is not currently implemented for @DescribeBackups@ requests.
--
-- * 'dbsMaxResults' - This is not currently implemented for @DescribeBackups@ requests.
--
-- * 'dbsBackupId' - Describes a single backup.
--
-- * 'dbsServerName' - Returns backups for the server with the specified ServerName.
describeBackups ::
  DescribeBackups
describeBackups =
  DescribeBackups'
    { _dbsNextToken = Nothing,
      _dbsMaxResults = Nothing,
      _dbsBackupId = Nothing,
      _dbsServerName = Nothing
    }

-- | This is not currently implemented for @DescribeBackups@ requests.
dbsNextToken :: Lens' DescribeBackups (Maybe Text)
dbsNextToken = lens _dbsNextToken (\s a -> s {_dbsNextToken = a})

-- | This is not currently implemented for @DescribeBackups@ requests.
dbsMaxResults :: Lens' DescribeBackups (Maybe Natural)
dbsMaxResults = lens _dbsMaxResults (\s a -> s {_dbsMaxResults = a}) . mapping _Nat

-- | Describes a single backup.
dbsBackupId :: Lens' DescribeBackups (Maybe Text)
dbsBackupId = lens _dbsBackupId (\s a -> s {_dbsBackupId = a})

-- | Returns backups for the server with the specified ServerName.
dbsServerName :: Lens' DescribeBackups (Maybe Text)
dbsServerName = lens _dbsServerName (\s a -> s {_dbsServerName = a})

instance AWSPager DescribeBackups where
  page rq rs
    | stop (rs ^. desrsNextToken) = Nothing
    | stop (rs ^. desrsBackups) = Nothing
    | otherwise =
      Just $ rq & dbsNextToken .~ rs ^. desrsNextToken

instance AWSRequest DescribeBackups where
  type Rs DescribeBackups = DescribeBackupsResponse
  request = postJSON opsWorksCM
  response =
    receiveJSON
      ( \s h x ->
          DescribeBackupsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Backups" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeBackups

instance NFData DescribeBackups

instance ToHeaders DescribeBackups where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OpsWorksCM_V2016_11_01.DescribeBackups" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeBackups where
  toJSON DescribeBackups' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dbsNextToken,
            ("MaxResults" .=) <$> _dbsMaxResults,
            ("BackupId" .=) <$> _dbsBackupId,
            ("ServerName" .=) <$> _dbsServerName
          ]
      )

instance ToPath DescribeBackups where
  toPath = const "/"

instance ToQuery DescribeBackups where
  toQuery = const mempty

-- | /See:/ 'describeBackupsResponse' smart constructor.
data DescribeBackupsResponse = DescribeBackupsResponse'
  { _desrsNextToken ::
      !(Maybe Text),
    _desrsBackups ::
      !(Maybe [Backup]),
    _desrsResponseStatus ::
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

-- | Creates a value of 'DescribeBackupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsNextToken' - This is not currently implemented for @DescribeBackups@ requests.
--
-- * 'desrsBackups' - Contains the response to a @DescribeBackups@ request.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeBackupsResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeBackupsResponse
describeBackupsResponse pResponseStatus_ =
  DescribeBackupsResponse'
    { _desrsNextToken = Nothing,
      _desrsBackups = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | This is not currently implemented for @DescribeBackups@ requests.
desrsNextToken :: Lens' DescribeBackupsResponse (Maybe Text)
desrsNextToken = lens _desrsNextToken (\s a -> s {_desrsNextToken = a})

-- | Contains the response to a @DescribeBackups@ request.
desrsBackups :: Lens' DescribeBackupsResponse [Backup]
desrsBackups = lens _desrsBackups (\s a -> s {_desrsBackups = a}) . _Default . _Coerce

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeBackupsResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeBackupsResponse
