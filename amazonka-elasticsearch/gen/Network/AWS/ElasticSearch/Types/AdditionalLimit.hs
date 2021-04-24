{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.AdditionalLimit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.AdditionalLimit where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | List of limits that are specific to a given InstanceType and for each of it's @'InstanceRole' @ .
--
--
--
-- /See:/ 'additionalLimit' smart constructor.
data AdditionalLimit = AdditionalLimit'
  { _alLimitValues ::
      !(Maybe [Text]),
    _alLimitName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AdditionalLimit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alLimitValues' - Value for given @'AdditionalLimit$LimitName' @ .
--
-- * 'alLimitName' - Name of Additional Limit is specific to a given InstanceType and for each of it's @'InstanceRole' @ etc.  Attributes and their details:      * MaximumNumberOfDataNodesSupportedThis attribute will be present in Master node only to specify how much data nodes upto which given @'ESPartitionInstanceType' @ can support as master node.     * MaximumNumberOfDataNodesWithoutMasterNodeThis attribute will be present in Data node only to specify how much data nodes of given @'ESPartitionInstanceType' @ upto which you don't need any master nodes to govern them.
additionalLimit ::
  AdditionalLimit
additionalLimit =
  AdditionalLimit'
    { _alLimitValues = Nothing,
      _alLimitName = Nothing
    }

-- | Value for given @'AdditionalLimit$LimitName' @ .
alLimitValues :: Lens' AdditionalLimit [Text]
alLimitValues = lens _alLimitValues (\s a -> s {_alLimitValues = a}) . _Default . _Coerce

-- | Name of Additional Limit is specific to a given InstanceType and for each of it's @'InstanceRole' @ etc.  Attributes and their details:      * MaximumNumberOfDataNodesSupportedThis attribute will be present in Master node only to specify how much data nodes upto which given @'ESPartitionInstanceType' @ can support as master node.     * MaximumNumberOfDataNodesWithoutMasterNodeThis attribute will be present in Data node only to specify how much data nodes of given @'ESPartitionInstanceType' @ upto which you don't need any master nodes to govern them.
alLimitName :: Lens' AdditionalLimit (Maybe Text)
alLimitName = lens _alLimitName (\s a -> s {_alLimitName = a})

instance FromJSON AdditionalLimit where
  parseJSON =
    withObject
      "AdditionalLimit"
      ( \x ->
          AdditionalLimit'
            <$> (x .:? "LimitValues" .!= mempty)
            <*> (x .:? "LimitName")
      )

instance Hashable AdditionalLimit

instance NFData AdditionalLimit
