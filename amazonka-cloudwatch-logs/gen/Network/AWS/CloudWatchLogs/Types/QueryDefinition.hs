{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchLogs.Types.QueryDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchLogs.Types.QueryDefinition where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | This structure contains details about a saved CloudWatch Logs Insights query definition.
--
--
--
-- /See:/ 'queryDefinition' smart constructor.
data QueryDefinition = QueryDefinition'
  { _qdQueryString ::
      !(Maybe Text),
    _qdName :: !(Maybe Text),
    _qdLogGroupNames :: !(Maybe [Text]),
    _qdLastModified :: !(Maybe Nat),
    _qdQueryDefinitionId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'QueryDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qdQueryString' - The query string to use for this definition. For more information, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html CloudWatch Logs Insights Query Syntax> .
--
-- * 'qdName' - The name of the query definition.
--
-- * 'qdLogGroupNames' - If this query definition contains a list of log groups that it is limited to, that list appears here.
--
-- * 'qdLastModified' - The date that the query definition was most recently modified.
--
-- * 'qdQueryDefinitionId' - The unique ID of the query definition.
queryDefinition ::
  QueryDefinition
queryDefinition =
  QueryDefinition'
    { _qdQueryString = Nothing,
      _qdName = Nothing,
      _qdLogGroupNames = Nothing,
      _qdLastModified = Nothing,
      _qdQueryDefinitionId = Nothing
    }

-- | The query string to use for this definition. For more information, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html CloudWatch Logs Insights Query Syntax> .
qdQueryString :: Lens' QueryDefinition (Maybe Text)
qdQueryString = lens _qdQueryString (\s a -> s {_qdQueryString = a})

-- | The name of the query definition.
qdName :: Lens' QueryDefinition (Maybe Text)
qdName = lens _qdName (\s a -> s {_qdName = a})

-- | If this query definition contains a list of log groups that it is limited to, that list appears here.
qdLogGroupNames :: Lens' QueryDefinition [Text]
qdLogGroupNames = lens _qdLogGroupNames (\s a -> s {_qdLogGroupNames = a}) . _Default . _Coerce

-- | The date that the query definition was most recently modified.
qdLastModified :: Lens' QueryDefinition (Maybe Natural)
qdLastModified = lens _qdLastModified (\s a -> s {_qdLastModified = a}) . mapping _Nat

-- | The unique ID of the query definition.
qdQueryDefinitionId :: Lens' QueryDefinition (Maybe Text)
qdQueryDefinitionId = lens _qdQueryDefinitionId (\s a -> s {_qdQueryDefinitionId = a})

instance FromJSON QueryDefinition where
  parseJSON =
    withObject
      "QueryDefinition"
      ( \x ->
          QueryDefinition'
            <$> (x .:? "queryString")
            <*> (x .:? "name")
            <*> (x .:? "logGroupNames" .!= mempty)
            <*> (x .:? "lastModified")
            <*> (x .:? "queryDefinitionId")
      )

instance Hashable QueryDefinition

instance NFData QueryDefinition
