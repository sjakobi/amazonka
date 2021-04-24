{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.ComplianceStringFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ComplianceStringFilter where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.ComplianceQueryOperatorType

-- | One or more filters. Use a filter to return a more specific list of results.
--
--
--
-- /See:/ 'complianceStringFilter' smart constructor.
data ComplianceStringFilter = ComplianceStringFilter'
  { _csfKey ::
      !(Maybe Text),
    _csfValues ::
      !(Maybe (List1 Text)),
    _csfType ::
      !( Maybe
           ComplianceQueryOperatorType
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

-- | Creates a value of 'ComplianceStringFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csfKey' - The name of the filter.
--
-- * 'csfValues' - The value for which to search.
--
-- * 'csfType' - The type of comparison that should be performed for the value: Equal, NotEqual, BeginWith, LessThan, or GreaterThan.
complianceStringFilter ::
  ComplianceStringFilter
complianceStringFilter =
  ComplianceStringFilter'
    { _csfKey = Nothing,
      _csfValues = Nothing,
      _csfType = Nothing
    }

-- | The name of the filter.
csfKey :: Lens' ComplianceStringFilter (Maybe Text)
csfKey = lens _csfKey (\s a -> s {_csfKey = a})

-- | The value for which to search.
csfValues :: Lens' ComplianceStringFilter (Maybe (NonEmpty Text))
csfValues = lens _csfValues (\s a -> s {_csfValues = a}) . mapping _List1

-- | The type of comparison that should be performed for the value: Equal, NotEqual, BeginWith, LessThan, or GreaterThan.
csfType :: Lens' ComplianceStringFilter (Maybe ComplianceQueryOperatorType)
csfType = lens _csfType (\s a -> s {_csfType = a})

instance Hashable ComplianceStringFilter

instance NFData ComplianceStringFilter

instance ToJSON ComplianceStringFilter where
  toJSON ComplianceStringFilter' {..} =
    object
      ( catMaybes
          [ ("Key" .=) <$> _csfKey,
            ("Values" .=) <$> _csfValues,
            ("Type" .=) <$> _csfType
          ]
      )
