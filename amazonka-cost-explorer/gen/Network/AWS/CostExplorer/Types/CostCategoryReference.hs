{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.CostCategoryReference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.CostCategoryReference where

import Network.AWS.CostExplorer.Types.CostCategoryProcessingStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A reference to a Cost Category containing only enough information to identify the Cost Category.
--
--
-- You can use this information to retrieve the full Cost Category information using @DescribeCostCategory@ .
--
--
-- /See:/ 'costCategoryReference' smart constructor.
data CostCategoryReference = CostCategoryReference'
  { _ccrNumberOfRules ::
      !(Maybe Nat),
    _ccrCostCategoryARN ::
      !(Maybe Text),
    _ccrValues ::
      !(Maybe [Text]),
    _ccrProcessingStatus ::
      !( Maybe
           [CostCategoryProcessingStatus]
       ),
    _ccrName :: !(Maybe Text),
    _ccrEffectiveStart ::
      !(Maybe Text),
    _ccrEffectiveEnd ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CostCategoryReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrNumberOfRules' - The number of rules associated with a specific Cost Category.
--
-- * 'ccrCostCategoryARN' - The unique identifier for your Cost Category.
--
-- * 'ccrValues' - A list of unique cost category values in a specific cost category.
--
-- * 'ccrProcessingStatus' - The list of processing statuses for Cost Management products for a specific cost category.
--
-- * 'ccrName' - Undocumented member.
--
-- * 'ccrEffectiveStart' - The Cost Category's effective start date.
--
-- * 'ccrEffectiveEnd' - The Cost Category's effective end date.
costCategoryReference ::
  CostCategoryReference
costCategoryReference =
  CostCategoryReference'
    { _ccrNumberOfRules = Nothing,
      _ccrCostCategoryARN = Nothing,
      _ccrValues = Nothing,
      _ccrProcessingStatus = Nothing,
      _ccrName = Nothing,
      _ccrEffectiveStart = Nothing,
      _ccrEffectiveEnd = Nothing
    }

-- | The number of rules associated with a specific Cost Category.
ccrNumberOfRules :: Lens' CostCategoryReference (Maybe Natural)
ccrNumberOfRules = lens _ccrNumberOfRules (\s a -> s {_ccrNumberOfRules = a}) . mapping _Nat

-- | The unique identifier for your Cost Category.
ccrCostCategoryARN :: Lens' CostCategoryReference (Maybe Text)
ccrCostCategoryARN = lens _ccrCostCategoryARN (\s a -> s {_ccrCostCategoryARN = a})

-- | A list of unique cost category values in a specific cost category.
ccrValues :: Lens' CostCategoryReference [Text]
ccrValues = lens _ccrValues (\s a -> s {_ccrValues = a}) . _Default . _Coerce

-- | The list of processing statuses for Cost Management products for a specific cost category.
ccrProcessingStatus :: Lens' CostCategoryReference [CostCategoryProcessingStatus]
ccrProcessingStatus = lens _ccrProcessingStatus (\s a -> s {_ccrProcessingStatus = a}) . _Default . _Coerce

-- | Undocumented member.
ccrName :: Lens' CostCategoryReference (Maybe Text)
ccrName = lens _ccrName (\s a -> s {_ccrName = a})

-- | The Cost Category's effective start date.
ccrEffectiveStart :: Lens' CostCategoryReference (Maybe Text)
ccrEffectiveStart = lens _ccrEffectiveStart (\s a -> s {_ccrEffectiveStart = a})

-- | The Cost Category's effective end date.
ccrEffectiveEnd :: Lens' CostCategoryReference (Maybe Text)
ccrEffectiveEnd = lens _ccrEffectiveEnd (\s a -> s {_ccrEffectiveEnd = a})

instance FromJSON CostCategoryReference where
  parseJSON =
    withObject
      "CostCategoryReference"
      ( \x ->
          CostCategoryReference'
            <$> (x .:? "NumberOfRules")
            <*> (x .:? "CostCategoryArn")
            <*> (x .:? "Values" .!= mempty)
            <*> (x .:? "ProcessingStatus" .!= mempty)
            <*> (x .:? "Name")
            <*> (x .:? "EffectiveStart")
            <*> (x .:? "EffectiveEnd")
      )

instance Hashable CostCategoryReference

instance NFData CostCategoryReference
