{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Crawler
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.Crawler where

import Network.AWS.Glue.Types.CrawlerState
import Network.AWS.Glue.Types.CrawlerTargets
import Network.AWS.Glue.Types.LastCrawlInfo
import Network.AWS.Glue.Types.LineageConfiguration
import Network.AWS.Glue.Types.RecrawlPolicy
import Network.AWS.Glue.Types.Schedule
import Network.AWS.Glue.Types.SchemaChangePolicy
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies a crawler program that examines a data source and uses classifiers to try to determine its schema. If successful, the crawler records metadata concerning the data source in the AWS Glue Data Catalog.
--
--
--
-- /See:/ 'crawler' smart constructor.
data Crawler = Crawler'
  { _crarSchemaChangePolicy ::
      !(Maybe SchemaChangePolicy),
    _crarRecrawlPolicy :: !(Maybe RecrawlPolicy),
    _crarClassifiers :: !(Maybe [Text]),
    _crarCreationTime :: !(Maybe POSIX),
    _crarConfiguration :: !(Maybe Text),
    _crarLineageConfiguration ::
      !(Maybe LineageConfiguration),
    _crarVersion :: !(Maybe Integer),
    _crarTargets :: !(Maybe CrawlerTargets),
    _crarLastUpdated :: !(Maybe POSIX),
    _crarState :: !(Maybe CrawlerState),
    _crarName :: !(Maybe Text),
    _crarCrawlElapsedTime :: !(Maybe Integer),
    _crarRole :: !(Maybe Text),
    _crarLastCrawl :: !(Maybe LastCrawlInfo),
    _crarTablePrefix :: !(Maybe Text),
    _crarDescription :: !(Maybe Text),
    _crarSchedule :: !(Maybe Schedule),
    _crarCrawlerSecurityConfiguration :: !(Maybe Text),
    _crarDatabaseName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Crawler' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crarSchemaChangePolicy' - The policy that specifies update and delete behaviors for the crawler.
--
-- * 'crarRecrawlPolicy' - A policy that specifies whether to crawl the entire dataset again, or to crawl only folders that were added since the last crawler run.
--
-- * 'crarClassifiers' - A list of UTF-8 strings that specify the custom classifiers that are associated with the crawler.
--
-- * 'crarCreationTime' - The time that the crawler was created.
--
-- * 'crarConfiguration' - Crawler configuration information. This versioned JSON string allows users to specify aspects of a crawler's behavior. For more information, see <https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html Configuring a Crawler> .
--
-- * 'crarLineageConfiguration' - A configuration that specifies whether data lineage is enabled for the crawler.
--
-- * 'crarVersion' - The version of the crawler.
--
-- * 'crarTargets' - A collection of targets to crawl.
--
-- * 'crarLastUpdated' - The time that the crawler was last updated.
--
-- * 'crarState' - Indicates whether the crawler is running, or whether a run is pending.
--
-- * 'crarName' - The name of the crawler.
--
-- * 'crarCrawlElapsedTime' - If the crawler is running, contains the total time elapsed since the last crawl began.
--
-- * 'crarRole' - The Amazon Resource Name (ARN) of an IAM role that's used to access customer resources, such as Amazon Simple Storage Service (Amazon S3) data.
--
-- * 'crarLastCrawl' - The status of the last crawl, and potentially error information if an error occurred.
--
-- * 'crarTablePrefix' - The prefix added to the names of tables that are created.
--
-- * 'crarDescription' - A description of the crawler.
--
-- * 'crarSchedule' - For scheduled crawlers, the schedule when the crawler runs.
--
-- * 'crarCrawlerSecurityConfiguration' - The name of the @SecurityConfiguration@ structure to be used by this crawler.
--
-- * 'crarDatabaseName' - The name of the database in which the crawler's output is stored.
crawler ::
  Crawler
crawler =
  Crawler'
    { _crarSchemaChangePolicy = Nothing,
      _crarRecrawlPolicy = Nothing,
      _crarClassifiers = Nothing,
      _crarCreationTime = Nothing,
      _crarConfiguration = Nothing,
      _crarLineageConfiguration = Nothing,
      _crarVersion = Nothing,
      _crarTargets = Nothing,
      _crarLastUpdated = Nothing,
      _crarState = Nothing,
      _crarName = Nothing,
      _crarCrawlElapsedTime = Nothing,
      _crarRole = Nothing,
      _crarLastCrawl = Nothing,
      _crarTablePrefix = Nothing,
      _crarDescription = Nothing,
      _crarSchedule = Nothing,
      _crarCrawlerSecurityConfiguration = Nothing,
      _crarDatabaseName = Nothing
    }

-- | The policy that specifies update and delete behaviors for the crawler.
crarSchemaChangePolicy :: Lens' Crawler (Maybe SchemaChangePolicy)
crarSchemaChangePolicy = lens _crarSchemaChangePolicy (\s a -> s {_crarSchemaChangePolicy = a})

-- | A policy that specifies whether to crawl the entire dataset again, or to crawl only folders that were added since the last crawler run.
crarRecrawlPolicy :: Lens' Crawler (Maybe RecrawlPolicy)
crarRecrawlPolicy = lens _crarRecrawlPolicy (\s a -> s {_crarRecrawlPolicy = a})

-- | A list of UTF-8 strings that specify the custom classifiers that are associated with the crawler.
crarClassifiers :: Lens' Crawler [Text]
crarClassifiers = lens _crarClassifiers (\s a -> s {_crarClassifiers = a}) . _Default . _Coerce

-- | The time that the crawler was created.
crarCreationTime :: Lens' Crawler (Maybe UTCTime)
crarCreationTime = lens _crarCreationTime (\s a -> s {_crarCreationTime = a}) . mapping _Time

-- | Crawler configuration information. This versioned JSON string allows users to specify aspects of a crawler's behavior. For more information, see <https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html Configuring a Crawler> .
crarConfiguration :: Lens' Crawler (Maybe Text)
crarConfiguration = lens _crarConfiguration (\s a -> s {_crarConfiguration = a})

-- | A configuration that specifies whether data lineage is enabled for the crawler.
crarLineageConfiguration :: Lens' Crawler (Maybe LineageConfiguration)
crarLineageConfiguration = lens _crarLineageConfiguration (\s a -> s {_crarLineageConfiguration = a})

-- | The version of the crawler.
crarVersion :: Lens' Crawler (Maybe Integer)
crarVersion = lens _crarVersion (\s a -> s {_crarVersion = a})

-- | A collection of targets to crawl.
crarTargets :: Lens' Crawler (Maybe CrawlerTargets)
crarTargets = lens _crarTargets (\s a -> s {_crarTargets = a})

-- | The time that the crawler was last updated.
crarLastUpdated :: Lens' Crawler (Maybe UTCTime)
crarLastUpdated = lens _crarLastUpdated (\s a -> s {_crarLastUpdated = a}) . mapping _Time

-- | Indicates whether the crawler is running, or whether a run is pending.
crarState :: Lens' Crawler (Maybe CrawlerState)
crarState = lens _crarState (\s a -> s {_crarState = a})

-- | The name of the crawler.
crarName :: Lens' Crawler (Maybe Text)
crarName = lens _crarName (\s a -> s {_crarName = a})

-- | If the crawler is running, contains the total time elapsed since the last crawl began.
crarCrawlElapsedTime :: Lens' Crawler (Maybe Integer)
crarCrawlElapsedTime = lens _crarCrawlElapsedTime (\s a -> s {_crarCrawlElapsedTime = a})

-- | The Amazon Resource Name (ARN) of an IAM role that's used to access customer resources, such as Amazon Simple Storage Service (Amazon S3) data.
crarRole :: Lens' Crawler (Maybe Text)
crarRole = lens _crarRole (\s a -> s {_crarRole = a})

-- | The status of the last crawl, and potentially error information if an error occurred.
crarLastCrawl :: Lens' Crawler (Maybe LastCrawlInfo)
crarLastCrawl = lens _crarLastCrawl (\s a -> s {_crarLastCrawl = a})

-- | The prefix added to the names of tables that are created.
crarTablePrefix :: Lens' Crawler (Maybe Text)
crarTablePrefix = lens _crarTablePrefix (\s a -> s {_crarTablePrefix = a})

-- | A description of the crawler.
crarDescription :: Lens' Crawler (Maybe Text)
crarDescription = lens _crarDescription (\s a -> s {_crarDescription = a})

-- | For scheduled crawlers, the schedule when the crawler runs.
crarSchedule :: Lens' Crawler (Maybe Schedule)
crarSchedule = lens _crarSchedule (\s a -> s {_crarSchedule = a})

-- | The name of the @SecurityConfiguration@ structure to be used by this crawler.
crarCrawlerSecurityConfiguration :: Lens' Crawler (Maybe Text)
crarCrawlerSecurityConfiguration = lens _crarCrawlerSecurityConfiguration (\s a -> s {_crarCrawlerSecurityConfiguration = a})

-- | The name of the database in which the crawler's output is stored.
crarDatabaseName :: Lens' Crawler (Maybe Text)
crarDatabaseName = lens _crarDatabaseName (\s a -> s {_crarDatabaseName = a})

instance FromJSON Crawler where
  parseJSON =
    withObject
      "Crawler"
      ( \x ->
          Crawler'
            <$> (x .:? "SchemaChangePolicy")
            <*> (x .:? "RecrawlPolicy")
            <*> (x .:? "Classifiers" .!= mempty)
            <*> (x .:? "CreationTime")
            <*> (x .:? "Configuration")
            <*> (x .:? "LineageConfiguration")
            <*> (x .:? "Version")
            <*> (x .:? "Targets")
            <*> (x .:? "LastUpdated")
            <*> (x .:? "State")
            <*> (x .:? "Name")
            <*> (x .:? "CrawlElapsedTime")
            <*> (x .:? "Role")
            <*> (x .:? "LastCrawl")
            <*> (x .:? "TablePrefix")
            <*> (x .:? "Description")
            <*> (x .:? "Schedule")
            <*> (x .:? "CrawlerSecurityConfiguration")
            <*> (x .:? "DatabaseName")
      )

instance Hashable Crawler

instance NFData Crawler
