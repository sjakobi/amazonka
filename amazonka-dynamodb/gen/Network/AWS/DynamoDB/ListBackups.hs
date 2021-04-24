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
-- Module      : Network.AWS.DynamoDB.ListBackups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List backups associated with an AWS account. To list backups for a given table, specify @TableName@ . @ListBackups@ returns a paginated list of results with at most 1 MB worth of items in a page. You can also specify a maximum number of entries to be returned in a page.
--
--
-- In the request, start time is inclusive, but end time is exclusive. Note that these boundaries are for the time at which the original backup was requested.
--
-- You can call @ListBackups@ a maximum of five times per second.
--
--
-- This operation returns paginated results.
module Network.AWS.DynamoDB.ListBackups
  ( -- * Creating a Request
    listBackups,
    ListBackups,

    -- * Request Lenses
    lbTableName,
    lbBackupType,
    lbTimeRangeLowerBound,
    lbLimit,
    lbExclusiveStartBackupARN,
    lbTimeRangeUpperBound,

    -- * Destructuring the Response
    listBackupsResponse,
    ListBackupsResponse,

    -- * Response Lenses
    lbrrsLastEvaluatedBackupARN,
    lbrrsBackupSummaries,
    lbrrsResponseStatus,
  )
where

import Network.AWS.DynamoDB.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listBackups' smart constructor.
data ListBackups = ListBackups'
  { _lbTableName ::
      !(Maybe Text),
    _lbBackupType :: !(Maybe BackupTypeFilter),
    _lbTimeRangeLowerBound :: !(Maybe POSIX),
    _lbLimit :: !(Maybe Nat),
    _lbExclusiveStartBackupARN :: !(Maybe Text),
    _lbTimeRangeUpperBound :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListBackups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbTableName' - The backups from the table specified by @TableName@ are listed.
--
-- * 'lbBackupType' - The backups from the table specified by @BackupType@ are listed. Where @BackupType@ can be:     * @USER@ - On-demand backup created by you.     * @SYSTEM@ - On-demand backup automatically created by DynamoDB.     * @ALL@ - All types of on-demand backups (USER and SYSTEM).
--
-- * 'lbTimeRangeLowerBound' - Only backups created after this time are listed. @TimeRangeLowerBound@ is inclusive.
--
-- * 'lbLimit' - Maximum number of backups to return at once.
--
-- * 'lbExclusiveStartBackupARN' - @LastEvaluatedBackupArn@ is the Amazon Resource Name (ARN) of the backup last evaluated when the current page of results was returned, inclusive of the current page of results. This value may be specified as the @ExclusiveStartBackupArn@ of a new @ListBackups@ operation in order to fetch the next page of results.
--
-- * 'lbTimeRangeUpperBound' - Only backups created before this time are listed. @TimeRangeUpperBound@ is exclusive.
listBackups ::
  ListBackups
listBackups =
  ListBackups'
    { _lbTableName = Nothing,
      _lbBackupType = Nothing,
      _lbTimeRangeLowerBound = Nothing,
      _lbLimit = Nothing,
      _lbExclusiveStartBackupARN = Nothing,
      _lbTimeRangeUpperBound = Nothing
    }

-- | The backups from the table specified by @TableName@ are listed.
lbTableName :: Lens' ListBackups (Maybe Text)
lbTableName = lens _lbTableName (\s a -> s {_lbTableName = a})

-- | The backups from the table specified by @BackupType@ are listed. Where @BackupType@ can be:     * @USER@ - On-demand backup created by you.     * @SYSTEM@ - On-demand backup automatically created by DynamoDB.     * @ALL@ - All types of on-demand backups (USER and SYSTEM).
lbBackupType :: Lens' ListBackups (Maybe BackupTypeFilter)
lbBackupType = lens _lbBackupType (\s a -> s {_lbBackupType = a})

-- | Only backups created after this time are listed. @TimeRangeLowerBound@ is inclusive.
lbTimeRangeLowerBound :: Lens' ListBackups (Maybe UTCTime)
lbTimeRangeLowerBound = lens _lbTimeRangeLowerBound (\s a -> s {_lbTimeRangeLowerBound = a}) . mapping _Time

-- | Maximum number of backups to return at once.
lbLimit :: Lens' ListBackups (Maybe Natural)
lbLimit = lens _lbLimit (\s a -> s {_lbLimit = a}) . mapping _Nat

-- | @LastEvaluatedBackupArn@ is the Amazon Resource Name (ARN) of the backup last evaluated when the current page of results was returned, inclusive of the current page of results. This value may be specified as the @ExclusiveStartBackupArn@ of a new @ListBackups@ operation in order to fetch the next page of results.
lbExclusiveStartBackupARN :: Lens' ListBackups (Maybe Text)
lbExclusiveStartBackupARN = lens _lbExclusiveStartBackupARN (\s a -> s {_lbExclusiveStartBackupARN = a})

-- | Only backups created before this time are listed. @TimeRangeUpperBound@ is exclusive.
lbTimeRangeUpperBound :: Lens' ListBackups (Maybe UTCTime)
lbTimeRangeUpperBound = lens _lbTimeRangeUpperBound (\s a -> s {_lbTimeRangeUpperBound = a}) . mapping _Time

instance AWSPager ListBackups where
  page rq rs
    | stop (rs ^. lbrrsLastEvaluatedBackupARN) = Nothing
    | stop (rs ^. lbrrsBackupSummaries) = Nothing
    | otherwise =
      Just $
        rq
          & lbExclusiveStartBackupARN
          .~ rs ^. lbrrsLastEvaluatedBackupARN

instance AWSRequest ListBackups where
  type Rs ListBackups = ListBackupsResponse
  request = postJSON dynamoDB
  response =
    receiveJSON
      ( \s h x ->
          ListBackupsResponse'
            <$> (x .?> "LastEvaluatedBackupArn")
            <*> (x .?> "BackupSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListBackups

instance NFData ListBackups

instance ToHeaders ListBackups where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DynamoDB_20120810.ListBackups" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON ListBackups where
  toJSON ListBackups' {..} =
    object
      ( catMaybes
          [ ("TableName" .=) <$> _lbTableName,
            ("BackupType" .=) <$> _lbBackupType,
            ("TimeRangeLowerBound" .=)
              <$> _lbTimeRangeLowerBound,
            ("Limit" .=) <$> _lbLimit,
            ("ExclusiveStartBackupArn" .=)
              <$> _lbExclusiveStartBackupARN,
            ("TimeRangeUpperBound" .=)
              <$> _lbTimeRangeUpperBound
          ]
      )

instance ToPath ListBackups where
  toPath = const "/"

instance ToQuery ListBackups where
  toQuery = const mempty

-- | /See:/ 'listBackupsResponse' smart constructor.
data ListBackupsResponse = ListBackupsResponse'
  { _lbrrsLastEvaluatedBackupARN ::
      !(Maybe Text),
    _lbrrsBackupSummaries ::
      !(Maybe [BackupSummary]),
    _lbrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListBackupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbrrsLastEvaluatedBackupARN' - The ARN of the backup last evaluated when the current page of results was returned, inclusive of the current page of results. This value may be specified as the @ExclusiveStartBackupArn@ of a new @ListBackups@ operation in order to fetch the next page of results.  If @LastEvaluatedBackupArn@ is empty, then the last page of results has been processed and there are no more results to be retrieved.  If @LastEvaluatedBackupArn@ is not empty, this may or may not indicate that there is more data to be returned. All results are guaranteed to have been returned if and only if no value for @LastEvaluatedBackupArn@ is returned.
--
-- * 'lbrrsBackupSummaries' - List of @BackupSummary@ objects.
--
-- * 'lbrrsResponseStatus' - -- | The response status code.
listBackupsResponse ::
  -- | 'lbrrsResponseStatus'
  Int ->
  ListBackupsResponse
listBackupsResponse pResponseStatus_ =
  ListBackupsResponse'
    { _lbrrsLastEvaluatedBackupARN =
        Nothing,
      _lbrrsBackupSummaries = Nothing,
      _lbrrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the backup last evaluated when the current page of results was returned, inclusive of the current page of results. This value may be specified as the @ExclusiveStartBackupArn@ of a new @ListBackups@ operation in order to fetch the next page of results.  If @LastEvaluatedBackupArn@ is empty, then the last page of results has been processed and there are no more results to be retrieved.  If @LastEvaluatedBackupArn@ is not empty, this may or may not indicate that there is more data to be returned. All results are guaranteed to have been returned if and only if no value for @LastEvaluatedBackupArn@ is returned.
lbrrsLastEvaluatedBackupARN :: Lens' ListBackupsResponse (Maybe Text)
lbrrsLastEvaluatedBackupARN = lens _lbrrsLastEvaluatedBackupARN (\s a -> s {_lbrrsLastEvaluatedBackupARN = a})

-- | List of @BackupSummary@ objects.
lbrrsBackupSummaries :: Lens' ListBackupsResponse [BackupSummary]
lbrrsBackupSummaries = lens _lbrrsBackupSummaries (\s a -> s {_lbrrsBackupSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
lbrrsResponseStatus :: Lens' ListBackupsResponse Int
lbrrsResponseStatus = lens _lbrrsResponseStatus (\s a -> s {_lbrrsResponseStatus = a})

instance NFData ListBackupsResponse
