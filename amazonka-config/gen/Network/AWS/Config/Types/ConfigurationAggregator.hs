{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.ConfigurationAggregator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ConfigurationAggregator where

import Network.AWS.Config.Types.AccountAggregationSource
import Network.AWS.Config.Types.OrganizationAggregationSource
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The details about the configuration aggregator, including information about source accounts, regions, and metadata of the aggregator.
--
--
--
-- /See:/ 'configurationAggregator' smart constructor.
data ConfigurationAggregator = ConfigurationAggregator'
  { _caCreationTime ::
      !(Maybe POSIX),
    _caConfigurationAggregatorARN ::
      !(Maybe Text),
    _caConfigurationAggregatorName ::
      !(Maybe Text),
    _caAccountAggregationSources ::
      !( Maybe
           [AccountAggregationSource]
       ),
    _caCreatedBy ::
      !(Maybe Text),
    _caLastUpdatedTime ::
      !(Maybe POSIX),
    _caOrganizationAggregationSource ::
      !( Maybe
           OrganizationAggregationSource
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ConfigurationAggregator' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caCreationTime' - The time stamp when the configuration aggregator was created.
--
-- * 'caConfigurationAggregatorARN' - The Amazon Resource Name (ARN) of the aggregator.
--
-- * 'caConfigurationAggregatorName' - The name of the aggregator.
--
-- * 'caAccountAggregationSources' - Provides a list of source accounts and regions to be aggregated.
--
-- * 'caCreatedBy' - AWS service that created the configuration aggregator.
--
-- * 'caLastUpdatedTime' - The time of the last update.
--
-- * 'caOrganizationAggregationSource' - Provides an organization and list of regions to be aggregated.
configurationAggregator ::
  ConfigurationAggregator
configurationAggregator =
  ConfigurationAggregator'
    { _caCreationTime = Nothing,
      _caConfigurationAggregatorARN = Nothing,
      _caConfigurationAggregatorName = Nothing,
      _caAccountAggregationSources = Nothing,
      _caCreatedBy = Nothing,
      _caLastUpdatedTime = Nothing,
      _caOrganizationAggregationSource = Nothing
    }

-- | The time stamp when the configuration aggregator was created.
caCreationTime :: Lens' ConfigurationAggregator (Maybe UTCTime)
caCreationTime = lens _caCreationTime (\s a -> s {_caCreationTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the aggregator.
caConfigurationAggregatorARN :: Lens' ConfigurationAggregator (Maybe Text)
caConfigurationAggregatorARN = lens _caConfigurationAggregatorARN (\s a -> s {_caConfigurationAggregatorARN = a})

-- | The name of the aggregator.
caConfigurationAggregatorName :: Lens' ConfigurationAggregator (Maybe Text)
caConfigurationAggregatorName = lens _caConfigurationAggregatorName (\s a -> s {_caConfigurationAggregatorName = a})

-- | Provides a list of source accounts and regions to be aggregated.
caAccountAggregationSources :: Lens' ConfigurationAggregator [AccountAggregationSource]
caAccountAggregationSources = lens _caAccountAggregationSources (\s a -> s {_caAccountAggregationSources = a}) . _Default . _Coerce

-- | AWS service that created the configuration aggregator.
caCreatedBy :: Lens' ConfigurationAggregator (Maybe Text)
caCreatedBy = lens _caCreatedBy (\s a -> s {_caCreatedBy = a})

-- | The time of the last update.
caLastUpdatedTime :: Lens' ConfigurationAggregator (Maybe UTCTime)
caLastUpdatedTime = lens _caLastUpdatedTime (\s a -> s {_caLastUpdatedTime = a}) . mapping _Time

-- | Provides an organization and list of regions to be aggregated.
caOrganizationAggregationSource :: Lens' ConfigurationAggregator (Maybe OrganizationAggregationSource)
caOrganizationAggregationSource = lens _caOrganizationAggregationSource (\s a -> s {_caOrganizationAggregationSource = a})

instance FromJSON ConfigurationAggregator where
  parseJSON =
    withObject
      "ConfigurationAggregator"
      ( \x ->
          ConfigurationAggregator'
            <$> (x .:? "CreationTime")
            <*> (x .:? "ConfigurationAggregatorArn")
            <*> (x .:? "ConfigurationAggregatorName")
            <*> (x .:? "AccountAggregationSources" .!= mempty)
            <*> (x .:? "CreatedBy")
            <*> (x .:? "LastUpdatedTime")
            <*> (x .:? "OrganizationAggregationSource")
      )

instance Hashable ConfigurationAggregator

instance NFData ConfigurationAggregator
