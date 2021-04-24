{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.ResponseTimeRootCauseEntity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.ResponseTimeRootCauseEntity where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A collection of segments and corresponding subsegments associated to a response time warning.
--
--
--
-- /See:/ 'responseTimeRootCauseEntity' smart constructor.
data ResponseTimeRootCauseEntity = ResponseTimeRootCauseEntity'
  { _rtrceRemote ::
      !(Maybe Bool),
    _rtrceName ::
      !(Maybe Text),
    _rtrceCoverage ::
      !(Maybe Double)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ResponseTimeRootCauseEntity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtrceRemote' - A flag that denotes a remote subsegment.
--
-- * 'rtrceName' - The name of the entity.
--
-- * 'rtrceCoverage' - The type and messages of the exceptions.
responseTimeRootCauseEntity ::
  ResponseTimeRootCauseEntity
responseTimeRootCauseEntity =
  ResponseTimeRootCauseEntity'
    { _rtrceRemote =
        Nothing,
      _rtrceName = Nothing,
      _rtrceCoverage = Nothing
    }

-- | A flag that denotes a remote subsegment.
rtrceRemote :: Lens' ResponseTimeRootCauseEntity (Maybe Bool)
rtrceRemote = lens _rtrceRemote (\s a -> s {_rtrceRemote = a})

-- | The name of the entity.
rtrceName :: Lens' ResponseTimeRootCauseEntity (Maybe Text)
rtrceName = lens _rtrceName (\s a -> s {_rtrceName = a})

-- | The type and messages of the exceptions.
rtrceCoverage :: Lens' ResponseTimeRootCauseEntity (Maybe Double)
rtrceCoverage = lens _rtrceCoverage (\s a -> s {_rtrceCoverage = a})

instance FromJSON ResponseTimeRootCauseEntity where
  parseJSON =
    withObject
      "ResponseTimeRootCauseEntity"
      ( \x ->
          ResponseTimeRootCauseEntity'
            <$> (x .:? "Remote")
            <*> (x .:? "Name")
            <*> (x .:? "Coverage")
      )

instance Hashable ResponseTimeRootCauseEntity

instance NFData ResponseTimeRootCauseEntity
