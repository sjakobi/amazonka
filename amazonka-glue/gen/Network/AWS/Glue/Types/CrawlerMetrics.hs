{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.CrawlerMetrics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.CrawlerMetrics where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Metrics for a specified crawler.
--
--
--
-- /See:/ 'crawlerMetrics' smart constructor.
data CrawlerMetrics = CrawlerMetrics'
  { _cmCrawlerName ::
      !(Maybe Text),
    _cmTablesDeleted :: !(Maybe Nat),
    _cmTablesUpdated :: !(Maybe Nat),
    _cmTablesCreated :: !(Maybe Nat),
    _cmMedianRuntimeSeconds ::
      !(Maybe Double),
    _cmStillEstimating :: !(Maybe Bool),
    _cmTimeLeftSeconds :: !(Maybe Double),
    _cmLastRuntimeSeconds :: !(Maybe Double)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CrawlerMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmCrawlerName' - The name of the crawler.
--
-- * 'cmTablesDeleted' - The number of tables deleted by this crawler.
--
-- * 'cmTablesUpdated' - The number of tables updated by this crawler.
--
-- * 'cmTablesCreated' - The number of tables created by this crawler.
--
-- * 'cmMedianRuntimeSeconds' - The median duration of this crawler's runs, in seconds.
--
-- * 'cmStillEstimating' - True if the crawler is still estimating how long it will take to complete this run.
--
-- * 'cmTimeLeftSeconds' - The estimated time left to complete a running crawl.
--
-- * 'cmLastRuntimeSeconds' - The duration of the crawler's most recent run, in seconds.
crawlerMetrics ::
  CrawlerMetrics
crawlerMetrics =
  CrawlerMetrics'
    { _cmCrawlerName = Nothing,
      _cmTablesDeleted = Nothing,
      _cmTablesUpdated = Nothing,
      _cmTablesCreated = Nothing,
      _cmMedianRuntimeSeconds = Nothing,
      _cmStillEstimating = Nothing,
      _cmTimeLeftSeconds = Nothing,
      _cmLastRuntimeSeconds = Nothing
    }

-- | The name of the crawler.
cmCrawlerName :: Lens' CrawlerMetrics (Maybe Text)
cmCrawlerName = lens _cmCrawlerName (\s a -> s {_cmCrawlerName = a})

-- | The number of tables deleted by this crawler.
cmTablesDeleted :: Lens' CrawlerMetrics (Maybe Natural)
cmTablesDeleted = lens _cmTablesDeleted (\s a -> s {_cmTablesDeleted = a}) . mapping _Nat

-- | The number of tables updated by this crawler.
cmTablesUpdated :: Lens' CrawlerMetrics (Maybe Natural)
cmTablesUpdated = lens _cmTablesUpdated (\s a -> s {_cmTablesUpdated = a}) . mapping _Nat

-- | The number of tables created by this crawler.
cmTablesCreated :: Lens' CrawlerMetrics (Maybe Natural)
cmTablesCreated = lens _cmTablesCreated (\s a -> s {_cmTablesCreated = a}) . mapping _Nat

-- | The median duration of this crawler's runs, in seconds.
cmMedianRuntimeSeconds :: Lens' CrawlerMetrics (Maybe Double)
cmMedianRuntimeSeconds = lens _cmMedianRuntimeSeconds (\s a -> s {_cmMedianRuntimeSeconds = a})

-- | True if the crawler is still estimating how long it will take to complete this run.
cmStillEstimating :: Lens' CrawlerMetrics (Maybe Bool)
cmStillEstimating = lens _cmStillEstimating (\s a -> s {_cmStillEstimating = a})

-- | The estimated time left to complete a running crawl.
cmTimeLeftSeconds :: Lens' CrawlerMetrics (Maybe Double)
cmTimeLeftSeconds = lens _cmTimeLeftSeconds (\s a -> s {_cmTimeLeftSeconds = a})

-- | The duration of the crawler's most recent run, in seconds.
cmLastRuntimeSeconds :: Lens' CrawlerMetrics (Maybe Double)
cmLastRuntimeSeconds = lens _cmLastRuntimeSeconds (\s a -> s {_cmLastRuntimeSeconds = a})

instance FromJSON CrawlerMetrics where
  parseJSON =
    withObject
      "CrawlerMetrics"
      ( \x ->
          CrawlerMetrics'
            <$> (x .:? "CrawlerName")
            <*> (x .:? "TablesDeleted")
            <*> (x .:? "TablesUpdated")
            <*> (x .:? "TablesCreated")
            <*> (x .:? "MedianRuntimeSeconds")
            <*> (x .:? "StillEstimating")
            <*> (x .:? "TimeLeftSeconds")
            <*> (x .:? "LastRuntimeSeconds")
      )

instance Hashable CrawlerMetrics

instance NFData CrawlerMetrics
