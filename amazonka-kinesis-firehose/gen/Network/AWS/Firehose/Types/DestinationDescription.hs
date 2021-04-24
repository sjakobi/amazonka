{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.DestinationDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.DestinationDescription where

import Network.AWS.Firehose.Types.ElasticsearchDestinationDescription
import Network.AWS.Firehose.Types.ExtendedS3DestinationDescription
import Network.AWS.Firehose.Types.HTTPEndpointDestinationDescription
import Network.AWS.Firehose.Types.RedshiftDestinationDescription
import Network.AWS.Firehose.Types.S3DestinationDescription
import Network.AWS.Firehose.Types.SplunkDestinationDescription
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the destination for a delivery stream.
--
--
--
-- /See:/ 'destinationDescription' smart constructor.
data DestinationDescription = DestinationDescription'
  { _ddElasticsearchDestinationDescription ::
      !( Maybe
           ElasticsearchDestinationDescription
       ),
    _ddHTTPEndpointDestinationDescription ::
      !( Maybe
           HTTPEndpointDestinationDescription
       ),
    _ddExtendedS3DestinationDescription ::
      !( Maybe
           ExtendedS3DestinationDescription
       ),
    _ddRedshiftDestinationDescription ::
      !( Maybe
           RedshiftDestinationDescription
       ),
    _ddSplunkDestinationDescription ::
      !( Maybe
           SplunkDestinationDescription
       ),
    _ddS3DestinationDescription ::
      !( Maybe
           S3DestinationDescription
       ),
    _ddDestinationId :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DestinationDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddElasticsearchDestinationDescription' - The destination in Amazon ES.
--
-- * 'ddHTTPEndpointDestinationDescription' - Describes the specified HTTP endpoint destination.
--
-- * 'ddExtendedS3DestinationDescription' - The destination in Amazon S3.
--
-- * 'ddRedshiftDestinationDescription' - The destination in Amazon Redshift.
--
-- * 'ddSplunkDestinationDescription' - The destination in Splunk.
--
-- * 'ddS3DestinationDescription' - [Deprecated] The destination in Amazon S3.
--
-- * 'ddDestinationId' - The ID of the destination.
destinationDescription ::
  -- | 'ddDestinationId'
  Text ->
  DestinationDescription
destinationDescription pDestinationId_ =
  DestinationDescription'
    { _ddElasticsearchDestinationDescription =
        Nothing,
      _ddHTTPEndpointDestinationDescription = Nothing,
      _ddExtendedS3DestinationDescription = Nothing,
      _ddRedshiftDestinationDescription = Nothing,
      _ddSplunkDestinationDescription = Nothing,
      _ddS3DestinationDescription = Nothing,
      _ddDestinationId = pDestinationId_
    }

-- | The destination in Amazon ES.
ddElasticsearchDestinationDescription :: Lens' DestinationDescription (Maybe ElasticsearchDestinationDescription)
ddElasticsearchDestinationDescription = lens _ddElasticsearchDestinationDescription (\s a -> s {_ddElasticsearchDestinationDescription = a})

-- | Describes the specified HTTP endpoint destination.
ddHTTPEndpointDestinationDescription :: Lens' DestinationDescription (Maybe HTTPEndpointDestinationDescription)
ddHTTPEndpointDestinationDescription = lens _ddHTTPEndpointDestinationDescription (\s a -> s {_ddHTTPEndpointDestinationDescription = a})

-- | The destination in Amazon S3.
ddExtendedS3DestinationDescription :: Lens' DestinationDescription (Maybe ExtendedS3DestinationDescription)
ddExtendedS3DestinationDescription = lens _ddExtendedS3DestinationDescription (\s a -> s {_ddExtendedS3DestinationDescription = a})

-- | The destination in Amazon Redshift.
ddRedshiftDestinationDescription :: Lens' DestinationDescription (Maybe RedshiftDestinationDescription)
ddRedshiftDestinationDescription = lens _ddRedshiftDestinationDescription (\s a -> s {_ddRedshiftDestinationDescription = a})

-- | The destination in Splunk.
ddSplunkDestinationDescription :: Lens' DestinationDescription (Maybe SplunkDestinationDescription)
ddSplunkDestinationDescription = lens _ddSplunkDestinationDescription (\s a -> s {_ddSplunkDestinationDescription = a})

-- | [Deprecated] The destination in Amazon S3.
ddS3DestinationDescription :: Lens' DestinationDescription (Maybe S3DestinationDescription)
ddS3DestinationDescription = lens _ddS3DestinationDescription (\s a -> s {_ddS3DestinationDescription = a})

-- | The ID of the destination.
ddDestinationId :: Lens' DestinationDescription Text
ddDestinationId = lens _ddDestinationId (\s a -> s {_ddDestinationId = a})

instance FromJSON DestinationDescription where
  parseJSON =
    withObject
      "DestinationDescription"
      ( \x ->
          DestinationDescription'
            <$> (x .:? "ElasticsearchDestinationDescription")
            <*> (x .:? "HttpEndpointDestinationDescription")
            <*> (x .:? "ExtendedS3DestinationDescription")
            <*> (x .:? "RedshiftDestinationDescription")
            <*> (x .:? "SplunkDestinationDescription")
            <*> (x .:? "S3DestinationDescription")
            <*> (x .: "DestinationId")
      )

instance Hashable DestinationDescription

instance NFData DestinationDescription
