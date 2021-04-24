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
-- Module      : Network.AWS.CloudHSMv2.DescribeBackups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about backups of AWS CloudHSM clusters.
--
--
-- This is a paginated operation, which means that each response might contain only a subset of all the backups. When the response contains only a subset of backups, it includes a @NextToken@ value. Use this value in a subsequent @DescribeBackups@ request to get more backups. When you receive a response with no @NextToken@ (or an empty or null value), that means there are no more backups to get.
--
--
-- This operation returns paginated results.
module Network.AWS.CloudHSMv2.DescribeBackups
  ( -- * Creating a Request
    describeBackups,
    DescribeBackups,

    -- * Request Lenses
    dbNextToken,
    dbMaxResults,
    dbSortAscending,
    dbFilters,

    -- * Destructuring the Response
    describeBackupsResponse,
    DescribeBackupsResponse,

    -- * Response Lenses
    drsNextToken,
    drsBackups,
    drsResponseStatus,
  )
where

import Network.AWS.CloudHSMv2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeBackups' smart constructor.
data DescribeBackups = DescribeBackups'
  { _dbNextToken ::
      !(Maybe Text),
    _dbMaxResults :: !(Maybe Nat),
    _dbSortAscending :: !(Maybe Bool),
    _dbFilters ::
      !(Maybe (Map Text [Text]))
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeBackups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbNextToken' - The @NextToken@ value that you received in the previous response. Use this value to get more backups.
--
-- * 'dbMaxResults' - The maximum number of backups to return in the response. When there are more backups than the number you specify, the response contains a @NextToken@ value.
--
-- * 'dbSortAscending' - Designates whether or not to sort the return backups by ascending chronological order of generation.
--
-- * 'dbFilters' - One or more filters to limit the items returned in the response. Use the @backupIds@ filter to return only the specified backups. Specify backups by their backup identifier (ID). Use the @sourceBackupIds@ filter to return only the backups created from a source backup. The @sourceBackupID@ of a source backup is returned by the 'CopyBackupToRegion' operation. Use the @clusterIds@ filter to return only the backups for the specified clusters. Specify clusters by their cluster identifier (ID). Use the @states@ filter to return only backups that match the specified state. Use the @neverExpires@ filter to return backups filtered by the value in the @neverExpires@ parameter. @True@ returns all backups exempt from the backup retention policy. @False@ returns all backups with a backup retention policy defined at the cluster.
describeBackups ::
  DescribeBackups
describeBackups =
  DescribeBackups'
    { _dbNextToken = Nothing,
      _dbMaxResults = Nothing,
      _dbSortAscending = Nothing,
      _dbFilters = Nothing
    }

-- | The @NextToken@ value that you received in the previous response. Use this value to get more backups.
dbNextToken :: Lens' DescribeBackups (Maybe Text)
dbNextToken = lens _dbNextToken (\s a -> s {_dbNextToken = a})

-- | The maximum number of backups to return in the response. When there are more backups than the number you specify, the response contains a @NextToken@ value.
dbMaxResults :: Lens' DescribeBackups (Maybe Natural)
dbMaxResults = lens _dbMaxResults (\s a -> s {_dbMaxResults = a}) . mapping _Nat

-- | Designates whether or not to sort the return backups by ascending chronological order of generation.
dbSortAscending :: Lens' DescribeBackups (Maybe Bool)
dbSortAscending = lens _dbSortAscending (\s a -> s {_dbSortAscending = a})

-- | One or more filters to limit the items returned in the response. Use the @backupIds@ filter to return only the specified backups. Specify backups by their backup identifier (ID). Use the @sourceBackupIds@ filter to return only the backups created from a source backup. The @sourceBackupID@ of a source backup is returned by the 'CopyBackupToRegion' operation. Use the @clusterIds@ filter to return only the backups for the specified clusters. Specify clusters by their cluster identifier (ID). Use the @states@ filter to return only backups that match the specified state. Use the @neverExpires@ filter to return backups filtered by the value in the @neverExpires@ parameter. @True@ returns all backups exempt from the backup retention policy. @False@ returns all backups with a backup retention policy defined at the cluster.
dbFilters :: Lens' DescribeBackups (HashMap Text [Text])
dbFilters = lens _dbFilters (\s a -> s {_dbFilters = a}) . _Default . _Map

instance AWSPager DescribeBackups where
  page rq rs
    | stop (rs ^. drsNextToken) = Nothing
    | stop (rs ^. drsBackups) = Nothing
    | otherwise =
      Just $ rq & dbNextToken .~ rs ^. drsNextToken

instance AWSRequest DescribeBackups where
  type Rs DescribeBackups = DescribeBackupsResponse
  request = postJSON cloudHSMv2
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
              =# ("BaldrApiService.DescribeBackups" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeBackups where
  toJSON DescribeBackups' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dbNextToken,
            ("MaxResults" .=) <$> _dbMaxResults,
            ("SortAscending" .=) <$> _dbSortAscending,
            ("Filters" .=) <$> _dbFilters
          ]
      )

instance ToPath DescribeBackups where
  toPath = const "/"

instance ToQuery DescribeBackups where
  toQuery = const mempty

-- | /See:/ 'describeBackupsResponse' smart constructor.
data DescribeBackupsResponse = DescribeBackupsResponse'
  { _drsNextToken ::
      !(Maybe Text),
    _drsBackups ::
      !(Maybe [Backup]),
    _drsResponseStatus ::
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
-- * 'drsNextToken' - An opaque string that indicates that the response contains only a subset of backups. Use this value in a subsequent @DescribeBackups@ request to get more backups.
--
-- * 'drsBackups' - A list of backups.
--
-- * 'drsResponseStatus' - -- | The response status code.
describeBackupsResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeBackupsResponse
describeBackupsResponse pResponseStatus_ =
  DescribeBackupsResponse'
    { _drsNextToken = Nothing,
      _drsBackups = Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | An opaque string that indicates that the response contains only a subset of backups. Use this value in a subsequent @DescribeBackups@ request to get more backups.
drsNextToken :: Lens' DescribeBackupsResponse (Maybe Text)
drsNextToken = lens _drsNextToken (\s a -> s {_drsNextToken = a})

-- | A list of backups.
drsBackups :: Lens' DescribeBackupsResponse [Backup]
drsBackups = lens _drsBackups (\s a -> s {_drsBackups = a}) . _Default . _Coerce

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeBackupsResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DescribeBackupsResponse
