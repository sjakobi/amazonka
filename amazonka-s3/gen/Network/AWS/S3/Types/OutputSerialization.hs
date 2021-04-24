{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.OutputSerialization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.OutputSerialization where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.CSVOutput
import Network.AWS.S3.Types.JSONOutput

-- | Describes how results of the Select job are serialized.
--
--
--
-- /See:/ 'outputSerialization' smart constructor.
data OutputSerialization = OutputSerialization'
  { _osCSV ::
      !(Maybe CSVOutput),
    _osJSON :: !(Maybe JSONOutput)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OutputSerialization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osCSV' - Describes the serialization of CSV-encoded Select results.
--
-- * 'osJSON' - Specifies JSON as request's output serialization format.
outputSerialization ::
  OutputSerialization
outputSerialization =
  OutputSerialization'
    { _osCSV = Nothing,
      _osJSON = Nothing
    }

-- | Describes the serialization of CSV-encoded Select results.
osCSV :: Lens' OutputSerialization (Maybe CSVOutput)
osCSV = lens _osCSV (\s a -> s {_osCSV = a})

-- | Specifies JSON as request's output serialization format.
osJSON :: Lens' OutputSerialization (Maybe JSONOutput)
osJSON = lens _osJSON (\s a -> s {_osJSON = a})

instance Hashable OutputSerialization

instance NFData OutputSerialization

instance ToXML OutputSerialization where
  toXML OutputSerialization' {..} =
    mconcat ["CSV" @= _osCSV, "JSON" @= _osJSON]
