{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.OpsItemEventFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.OpsItemEventFilter where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.OpsItemEventFilterKey
import Network.AWS.SSM.Types.OpsItemEventFilterOperator

-- | Describes a filter for a specific list of OpsItem events. You can filter event information by using tags. You specify tags by using a key-value pair mapping.
--
--
--
-- /See:/ 'opsItemEventFilter' smart constructor.
data OpsItemEventFilter = OpsItemEventFilter'
  { _oiefKey ::
      !OpsItemEventFilterKey,
    _oiefValues :: ![Text],
    _oiefOperator ::
      !OpsItemEventFilterOperator
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OpsItemEventFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiefKey' - The name of the filter key. Currently, the only supported value is @OpsItemId@ .
--
-- * 'oiefValues' - The values for the filter, consisting of one or more OpsItem IDs.
--
-- * 'oiefOperator' - The operator used by the filter call. Currently, the only supported value is @Equal@ .
opsItemEventFilter ::
  -- | 'oiefKey'
  OpsItemEventFilterKey ->
  -- | 'oiefOperator'
  OpsItemEventFilterOperator ->
  OpsItemEventFilter
opsItemEventFilter pKey_ pOperator_ =
  OpsItemEventFilter'
    { _oiefKey = pKey_,
      _oiefValues = mempty,
      _oiefOperator = pOperator_
    }

-- | The name of the filter key. Currently, the only supported value is @OpsItemId@ .
oiefKey :: Lens' OpsItemEventFilter OpsItemEventFilterKey
oiefKey = lens _oiefKey (\s a -> s {_oiefKey = a})

-- | The values for the filter, consisting of one or more OpsItem IDs.
oiefValues :: Lens' OpsItemEventFilter [Text]
oiefValues = lens _oiefValues (\s a -> s {_oiefValues = a}) . _Coerce

-- | The operator used by the filter call. Currently, the only supported value is @Equal@ .
oiefOperator :: Lens' OpsItemEventFilter OpsItemEventFilterOperator
oiefOperator = lens _oiefOperator (\s a -> s {_oiefOperator = a})

instance Hashable OpsItemEventFilter

instance NFData OpsItemEventFilter

instance ToJSON OpsItemEventFilter where
  toJSON OpsItemEventFilter' {..} =
    object
      ( catMaybes
          [ Just ("Key" .= _oiefKey),
            Just ("Values" .= _oiefValues),
            Just ("Operator" .= _oiefOperator)
          ]
      )
