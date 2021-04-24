{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.LastCrawlInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.LastCrawlInfo where

import Network.AWS.Glue.Types.LastCrawlStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Status and error information about the most recent crawl.
--
--
--
-- /See:/ 'lastCrawlInfo' smart constructor.
data LastCrawlInfo = LastCrawlInfo'
  { _lciStatus ::
      !(Maybe LastCrawlStatus),
    _lciMessagePrefix :: !(Maybe Text),
    _lciLogGroup :: !(Maybe Text),
    _lciStartTime :: !(Maybe POSIX),
    _lciErrorMessage :: !(Maybe Text),
    _lciLogStream :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LastCrawlInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lciStatus' - Status of the last crawl.
--
-- * 'lciMessagePrefix' - The prefix for a message about this crawl.
--
-- * 'lciLogGroup' - The log group for the last crawl.
--
-- * 'lciStartTime' - The time at which the crawl started.
--
-- * 'lciErrorMessage' - If an error occurred, the error information about the last crawl.
--
-- * 'lciLogStream' - The log stream for the last crawl.
lastCrawlInfo ::
  LastCrawlInfo
lastCrawlInfo =
  LastCrawlInfo'
    { _lciStatus = Nothing,
      _lciMessagePrefix = Nothing,
      _lciLogGroup = Nothing,
      _lciStartTime = Nothing,
      _lciErrorMessage = Nothing,
      _lciLogStream = Nothing
    }

-- | Status of the last crawl.
lciStatus :: Lens' LastCrawlInfo (Maybe LastCrawlStatus)
lciStatus = lens _lciStatus (\s a -> s {_lciStatus = a})

-- | The prefix for a message about this crawl.
lciMessagePrefix :: Lens' LastCrawlInfo (Maybe Text)
lciMessagePrefix = lens _lciMessagePrefix (\s a -> s {_lciMessagePrefix = a})

-- | The log group for the last crawl.
lciLogGroup :: Lens' LastCrawlInfo (Maybe Text)
lciLogGroup = lens _lciLogGroup (\s a -> s {_lciLogGroup = a})

-- | The time at which the crawl started.
lciStartTime :: Lens' LastCrawlInfo (Maybe UTCTime)
lciStartTime = lens _lciStartTime (\s a -> s {_lciStartTime = a}) . mapping _Time

-- | If an error occurred, the error information about the last crawl.
lciErrorMessage :: Lens' LastCrawlInfo (Maybe Text)
lciErrorMessage = lens _lciErrorMessage (\s a -> s {_lciErrorMessage = a})

-- | The log stream for the last crawl.
lciLogStream :: Lens' LastCrawlInfo (Maybe Text)
lciLogStream = lens _lciLogStream (\s a -> s {_lciLogStream = a})

instance FromJSON LastCrawlInfo where
  parseJSON =
    withObject
      "LastCrawlInfo"
      ( \x ->
          LastCrawlInfo'
            <$> (x .:? "Status")
            <*> (x .:? "MessagePrefix")
            <*> (x .:? "LogGroup")
            <*> (x .:? "StartTime")
            <*> (x .:? "ErrorMessage")
            <*> (x .:? "LogStream")
      )

instance Hashable LastCrawlInfo

instance NFData LastCrawlInfo
