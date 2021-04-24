{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.Types.EngineVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.EngineVersion where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The Athena engine version for running queries.
--
--
--
-- /See:/ 'engineVersion' smart constructor.
data EngineVersion = EngineVersion'
  { _evEffectiveEngineVersion ::
      !(Maybe Text),
    _evSelectedEngineVersion :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EngineVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evEffectiveEngineVersion' - Read only. The engine version on which the query runs. If the user requests a valid engine version other than Auto, the effective engine version is the same as the engine version that the user requested. If the user requests Auto, the effective engine version is chosen by Athena. When a request to update the engine version is made by a @CreateWorkGroup@ or @UpdateWorkGroup@ operation, the @EffectiveEngineVersion@ field is ignored.
--
-- * 'evSelectedEngineVersion' - The engine version requested by the user. Possible values are determined by the output of @ListEngineVersions@ , including Auto. The default is Auto.
engineVersion ::
  EngineVersion
engineVersion =
  EngineVersion'
    { _evEffectiveEngineVersion = Nothing,
      _evSelectedEngineVersion = Nothing
    }

-- | Read only. The engine version on which the query runs. If the user requests a valid engine version other than Auto, the effective engine version is the same as the engine version that the user requested. If the user requests Auto, the effective engine version is chosen by Athena. When a request to update the engine version is made by a @CreateWorkGroup@ or @UpdateWorkGroup@ operation, the @EffectiveEngineVersion@ field is ignored.
evEffectiveEngineVersion :: Lens' EngineVersion (Maybe Text)
evEffectiveEngineVersion = lens _evEffectiveEngineVersion (\s a -> s {_evEffectiveEngineVersion = a})

-- | The engine version requested by the user. Possible values are determined by the output of @ListEngineVersions@ , including Auto. The default is Auto.
evSelectedEngineVersion :: Lens' EngineVersion (Maybe Text)
evSelectedEngineVersion = lens _evSelectedEngineVersion (\s a -> s {_evSelectedEngineVersion = a})

instance FromJSON EngineVersion where
  parseJSON =
    withObject
      "EngineVersion"
      ( \x ->
          EngineVersion'
            <$> (x .:? "EffectiveEngineVersion")
            <*> (x .:? "SelectedEngineVersion")
      )

instance Hashable EngineVersion

instance NFData EngineVersion

instance ToJSON EngineVersion where
  toJSON EngineVersion' {..} =
    object
      ( catMaybes
          [ ("EffectiveEngineVersion" .=)
              <$> _evEffectiveEngineVersion,
            ("SelectedEngineVersion" .=)
              <$> _evSelectedEngineVersion
          ]
      )
