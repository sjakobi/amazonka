{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.DescribePackagesFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.DescribePackagesFilter where

import Network.AWS.ElasticSearch.Types.DescribePackagesFilterName
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Filter to apply in @DescribePackage@ response.
--
--
--
-- /See:/ 'describePackagesFilter' smart constructor.
data DescribePackagesFilter = DescribePackagesFilter'
  { _dpfName ::
      !( Maybe
           DescribePackagesFilterName
       ),
    _dpfValue ::
      !(Maybe [Text])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribePackagesFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpfName' - Any field from @PackageDetails@ .
--
-- * 'dpfValue' - A list of values for the specified field.
describePackagesFilter ::
  DescribePackagesFilter
describePackagesFilter =
  DescribePackagesFilter'
    { _dpfName = Nothing,
      _dpfValue = Nothing
    }

-- | Any field from @PackageDetails@ .
dpfName :: Lens' DescribePackagesFilter (Maybe DescribePackagesFilterName)
dpfName = lens _dpfName (\s a -> s {_dpfName = a})

-- | A list of values for the specified field.
dpfValue :: Lens' DescribePackagesFilter [Text]
dpfValue = lens _dpfValue (\s a -> s {_dpfValue = a}) . _Default . _Coerce

instance Hashable DescribePackagesFilter

instance NFData DescribePackagesFilter

instance ToJSON DescribePackagesFilter where
  toJSON DescribePackagesFilter' {..} =
    object
      ( catMaybes
          [ ("Name" .=) <$> _dpfName,
            ("Value" .=) <$> _dpfValue
          ]
      )
