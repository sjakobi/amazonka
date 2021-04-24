{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.EngineDefaults
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.EngineDefaults where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types.Parameter

-- | Contains the result of a successful invocation of the @DescribeEngineDefaultParameters@ action.
--
--
--
-- /See:/ 'engineDefaults' smart constructor.
data EngineDefaults = EngineDefaults'
  { _edDBParameterGroupFamily ::
      !(Maybe Text),
    _edParameters :: !(Maybe [Parameter]),
    _edMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EngineDefaults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edDBParameterGroupFamily' - Specifies the name of the DB parameter group family that the engine default parameters apply to.
--
-- * 'edParameters' - Contains a list of engine default parameters.
--
-- * 'edMarker' - An optional pagination token provided by a previous EngineDefaults request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
engineDefaults ::
  EngineDefaults
engineDefaults =
  EngineDefaults'
    { _edDBParameterGroupFamily =
        Nothing,
      _edParameters = Nothing,
      _edMarker = Nothing
    }

-- | Specifies the name of the DB parameter group family that the engine default parameters apply to.
edDBParameterGroupFamily :: Lens' EngineDefaults (Maybe Text)
edDBParameterGroupFamily = lens _edDBParameterGroupFamily (\s a -> s {_edDBParameterGroupFamily = a})

-- | Contains a list of engine default parameters.
edParameters :: Lens' EngineDefaults [Parameter]
edParameters = lens _edParameters (\s a -> s {_edParameters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous EngineDefaults request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
edMarker :: Lens' EngineDefaults (Maybe Text)
edMarker = lens _edMarker (\s a -> s {_edMarker = a})

instance FromXML EngineDefaults where
  parseXML x =
    EngineDefaults'
      <$> (x .@? "DBParameterGroupFamily")
      <*> ( x .@? "Parameters" .!@ mempty
              >>= may (parseXMLList "Parameter")
          )
      <*> (x .@? "Marker")

instance Hashable EngineDefaults

instance NFData EngineDefaults
