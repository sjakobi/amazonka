{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.PatchOrchestratorFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.PatchOrchestratorFilter where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Defines a filter used in Patch Manager APIs.
--
--
--
-- /See:/ 'patchOrchestratorFilter' smart constructor.
data PatchOrchestratorFilter = PatchOrchestratorFilter'
  { _pofKey ::
      !(Maybe Text),
    _pofValues ::
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

-- | Creates a value of 'PatchOrchestratorFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pofKey' - The key for the filter.
--
-- * 'pofValues' - The value for the filter.
patchOrchestratorFilter ::
  PatchOrchestratorFilter
patchOrchestratorFilter =
  PatchOrchestratorFilter'
    { _pofKey = Nothing,
      _pofValues = Nothing
    }

-- | The key for the filter.
pofKey :: Lens' PatchOrchestratorFilter (Maybe Text)
pofKey = lens _pofKey (\s a -> s {_pofKey = a})

-- | The value for the filter.
pofValues :: Lens' PatchOrchestratorFilter [Text]
pofValues = lens _pofValues (\s a -> s {_pofValues = a}) . _Default . _Coerce

instance Hashable PatchOrchestratorFilter

instance NFData PatchOrchestratorFilter

instance ToJSON PatchOrchestratorFilter where
  toJSON PatchOrchestratorFilter' {..} =
    object
      ( catMaybes
          [ ("Key" .=) <$> _pofKey,
            ("Values" .=) <$> _pofValues
          ]
      )
