{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ServiceActionSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ServiceActionSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ServiceCatalog.Types.ServiceActionDefinitionType

-- | Detailed information about the self-service action.
--
--
--
-- /See:/ 'serviceActionSummary' smart constructor.
data ServiceActionSummary = ServiceActionSummary'
  { _sasId ::
      !(Maybe Text),
    _sasDefinitionType ::
      !( Maybe
           ServiceActionDefinitionType
       ),
    _sasName :: !(Maybe Text),
    _sasDescription ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServiceActionSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sasId' - The self-service action identifier.
--
-- * 'sasDefinitionType' - The self-service action definition type. For example, @SSM_AUTOMATION@ .
--
-- * 'sasName' - The self-service action name.
--
-- * 'sasDescription' - The self-service action description.
serviceActionSummary ::
  ServiceActionSummary
serviceActionSummary =
  ServiceActionSummary'
    { _sasId = Nothing,
      _sasDefinitionType = Nothing,
      _sasName = Nothing,
      _sasDescription = Nothing
    }

-- | The self-service action identifier.
sasId :: Lens' ServiceActionSummary (Maybe Text)
sasId = lens _sasId (\s a -> s {_sasId = a})

-- | The self-service action definition type. For example, @SSM_AUTOMATION@ .
sasDefinitionType :: Lens' ServiceActionSummary (Maybe ServiceActionDefinitionType)
sasDefinitionType = lens _sasDefinitionType (\s a -> s {_sasDefinitionType = a})

-- | The self-service action name.
sasName :: Lens' ServiceActionSummary (Maybe Text)
sasName = lens _sasName (\s a -> s {_sasName = a})

-- | The self-service action description.
sasDescription :: Lens' ServiceActionSummary (Maybe Text)
sasDescription = lens _sasDescription (\s a -> s {_sasDescription = a})

instance FromJSON ServiceActionSummary where
  parseJSON =
    withObject
      "ServiceActionSummary"
      ( \x ->
          ServiceActionSummary'
            <$> (x .:? "Id")
            <*> (x .:? "DefinitionType")
            <*> (x .:? "Name")
            <*> (x .:? "Description")
      )

instance Hashable ServiceActionSummary

instance NFData ServiceActionSummary
