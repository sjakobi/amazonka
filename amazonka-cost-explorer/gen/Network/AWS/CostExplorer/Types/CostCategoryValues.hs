{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.CostCategoryValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.CostCategoryValues where

import Network.AWS.CostExplorer.Types.MatchOption
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The Cost Categories values used for filtering the costs.
--
--
-- If @Values@ and @Key@ are not specified, the @ABSENT@ @MatchOption@ is applied to all Cost Categories. That is, filtering on resources that are not mapped to any Cost Categories.
--
-- If @Values@ is provided and @Key@ is not specified, the @ABSENT@ @MatchOption@ is applied to the Cost Categories @Key@ only. That is, filtering on resources without the given Cost Categories key.
--
--
-- /See:/ 'costCategoryValues' smart constructor.
data CostCategoryValues = CostCategoryValues'
  { _ccvKey ::
      !(Maybe Text),
    _ccvValues :: !(Maybe [Text]),
    _ccvMatchOptions ::
      !(Maybe [MatchOption])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CostCategoryValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccvKey' - Undocumented member.
--
-- * 'ccvValues' - The specific value of the Cost Category.
--
-- * 'ccvMatchOptions' - The match options that you can use to filter your results. MatchOptions is only applicable for actions related to cost category. The default values for @MatchOptions@ is @EQUALS@ and @CASE_SENSITIVE@ .
costCategoryValues ::
  CostCategoryValues
costCategoryValues =
  CostCategoryValues'
    { _ccvKey = Nothing,
      _ccvValues = Nothing,
      _ccvMatchOptions = Nothing
    }

-- | Undocumented member.
ccvKey :: Lens' CostCategoryValues (Maybe Text)
ccvKey = lens _ccvKey (\s a -> s {_ccvKey = a})

-- | The specific value of the Cost Category.
ccvValues :: Lens' CostCategoryValues [Text]
ccvValues = lens _ccvValues (\s a -> s {_ccvValues = a}) . _Default . _Coerce

-- | The match options that you can use to filter your results. MatchOptions is only applicable for actions related to cost category. The default values for @MatchOptions@ is @EQUALS@ and @CASE_SENSITIVE@ .
ccvMatchOptions :: Lens' CostCategoryValues [MatchOption]
ccvMatchOptions = lens _ccvMatchOptions (\s a -> s {_ccvMatchOptions = a}) . _Default . _Coerce

instance FromJSON CostCategoryValues where
  parseJSON =
    withObject
      "CostCategoryValues"
      ( \x ->
          CostCategoryValues'
            <$> (x .:? "Key")
            <*> (x .:? "Values" .!= mempty)
            <*> (x .:? "MatchOptions" .!= mempty)
      )

instance Hashable CostCategoryValues

instance NFData CostCategoryValues

instance ToJSON CostCategoryValues where
  toJSON CostCategoryValues' {..} =
    object
      ( catMaybes
          [ ("Key" .=) <$> _ccvKey,
            ("Values" .=) <$> _ccvValues,
            ("MatchOptions" .=) <$> _ccvMatchOptions
          ]
      )
