{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AssociationOverview
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationOverview where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the association.
--
--
--
-- /See:/ 'associationOverview' smart constructor.
data AssociationOverview = AssociationOverview'
  { _aoStatus ::
      !(Maybe Text),
    _aoDetailedStatus ::
      !(Maybe Text),
    _aoAssociationStatusAggregatedCount ::
      !(Maybe (Map Text Int))
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AssociationOverview' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoStatus' - The status of the association. Status can be: Pending, Success, or Failed.
--
-- * 'aoDetailedStatus' - A detailed status of the association.
--
-- * 'aoAssociationStatusAggregatedCount' - Returns the number of targets for the association status. For example, if you created an association with two instances, and one of them was successful, this would return the count of instances by status.
associationOverview ::
  AssociationOverview
associationOverview =
  AssociationOverview'
    { _aoStatus = Nothing,
      _aoDetailedStatus = Nothing,
      _aoAssociationStatusAggregatedCount = Nothing
    }

-- | The status of the association. Status can be: Pending, Success, or Failed.
aoStatus :: Lens' AssociationOverview (Maybe Text)
aoStatus = lens _aoStatus (\s a -> s {_aoStatus = a})

-- | A detailed status of the association.
aoDetailedStatus :: Lens' AssociationOverview (Maybe Text)
aoDetailedStatus = lens _aoDetailedStatus (\s a -> s {_aoDetailedStatus = a})

-- | Returns the number of targets for the association status. For example, if you created an association with two instances, and one of them was successful, this would return the count of instances by status.
aoAssociationStatusAggregatedCount :: Lens' AssociationOverview (HashMap Text Int)
aoAssociationStatusAggregatedCount = lens _aoAssociationStatusAggregatedCount (\s a -> s {_aoAssociationStatusAggregatedCount = a}) . _Default . _Map

instance FromJSON AssociationOverview where
  parseJSON =
    withObject
      "AssociationOverview"
      ( \x ->
          AssociationOverview'
            <$> (x .:? "Status")
            <*> (x .:? "DetailedStatus")
            <*> ( x .:? "AssociationStatusAggregatedCount"
                    .!= mempty
                )
      )

instance Hashable AssociationOverview

instance NFData AssociationOverview
