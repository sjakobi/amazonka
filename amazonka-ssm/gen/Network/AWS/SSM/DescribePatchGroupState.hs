{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.DescribePatchGroupState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns high-level aggregated patch compliance state for a patch group.
module Network.AWS.SSM.DescribePatchGroupState
  ( -- * Creating a Request
    describePatchGroupState,
    DescribePatchGroupState,

    -- * Request Lenses
    dpgsPatchGroup,

    -- * Destructuring the Response
    describePatchGroupStateResponse,
    DescribePatchGroupStateResponse,

    -- * Response Lenses
    dpgsrrsInstancesWithInstalledOtherPatches,
    dpgsrrsInstancesWithUnreportedNotApplicablePatches,
    dpgsrrsInstancesWithInstalledRejectedPatches,
    dpgsrrsInstances,
    dpgsrrsInstancesWithMissingPatches,
    dpgsrrsInstancesWithInstalledPendingRebootPatches,
    dpgsrrsInstancesWithFailedPatches,
    dpgsrrsInstancesWithInstalledPatches,
    dpgsrrsInstancesWithNotApplicablePatches,
    dpgsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describePatchGroupState' smart constructor.
newtype DescribePatchGroupState = DescribePatchGroupState'
  { _dpgsPatchGroup ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribePatchGroupState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpgsPatchGroup' - The name of the patch group whose patch snapshot should be retrieved.
describePatchGroupState ::
  -- | 'dpgsPatchGroup'
  Text ->
  DescribePatchGroupState
describePatchGroupState pPatchGroup_ =
  DescribePatchGroupState'
    { _dpgsPatchGroup =
        pPatchGroup_
    }

-- | The name of the patch group whose patch snapshot should be retrieved.
dpgsPatchGroup :: Lens' DescribePatchGroupState Text
dpgsPatchGroup = lens _dpgsPatchGroup (\s a -> s {_dpgsPatchGroup = a})

instance AWSRequest DescribePatchGroupState where
  type
    Rs DescribePatchGroupState =
      DescribePatchGroupStateResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribePatchGroupStateResponse'
            <$> (x .?> "InstancesWithInstalledOtherPatches")
            <*> (x .?> "InstancesWithUnreportedNotApplicablePatches")
            <*> (x .?> "InstancesWithInstalledRejectedPatches")
            <*> (x .?> "Instances")
            <*> (x .?> "InstancesWithMissingPatches")
            <*> (x .?> "InstancesWithInstalledPendingRebootPatches")
            <*> (x .?> "InstancesWithFailedPatches")
            <*> (x .?> "InstancesWithInstalledPatches")
            <*> (x .?> "InstancesWithNotApplicablePatches")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribePatchGroupState

instance NFData DescribePatchGroupState

instance ToHeaders DescribePatchGroupState where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.DescribePatchGroupState" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribePatchGroupState where
  toJSON DescribePatchGroupState' {..} =
    object
      (catMaybes [Just ("PatchGroup" .= _dpgsPatchGroup)])

instance ToPath DescribePatchGroupState where
  toPath = const "/"

instance ToQuery DescribePatchGroupState where
  toQuery = const mempty

-- | /See:/ 'describePatchGroupStateResponse' smart constructor.
data DescribePatchGroupStateResponse = DescribePatchGroupStateResponse'
  { _dpgsrrsInstancesWithInstalledOtherPatches ::
      !( Maybe
           Int
       ),
    _dpgsrrsInstancesWithUnreportedNotApplicablePatches ::
      !( Maybe
           Int
       ),
    _dpgsrrsInstancesWithInstalledRejectedPatches ::
      !( Maybe
           Int
       ),
    _dpgsrrsInstances ::
      !( Maybe
           Int
       ),
    _dpgsrrsInstancesWithMissingPatches ::
      !( Maybe
           Int
       ),
    _dpgsrrsInstancesWithInstalledPendingRebootPatches ::
      !( Maybe
           Int
       ),
    _dpgsrrsInstancesWithFailedPatches ::
      !( Maybe
           Int
       ),
    _dpgsrrsInstancesWithInstalledPatches ::
      !( Maybe
           Int
       ),
    _dpgsrrsInstancesWithNotApplicablePatches ::
      !( Maybe
           Int
       ),
    _dpgsrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribePatchGroupStateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpgsrrsInstancesWithInstalledOtherPatches' - The number of instances with patches installed that aren't defined in the patch baseline.
--
-- * 'dpgsrrsInstancesWithUnreportedNotApplicablePatches' - The number of instances with @NotApplicable@ patches beyond the supported limit, which are not reported by name to Systems Manager Inventory.
--
-- * 'dpgsrrsInstancesWithInstalledRejectedPatches' - The number of instances with patches installed that are specified in a RejectedPatches list. Patches with a status of /INSTALLED_REJECTED/ were typically installed before they were added to a RejectedPatches list.
--
-- * 'dpgsrrsInstances' - The number of instances in the patch group.
--
-- * 'dpgsrrsInstancesWithMissingPatches' - The number of instances with missing patches from the patch baseline.
--
-- * 'dpgsrrsInstancesWithInstalledPendingRebootPatches' - The number of instances with patches installed by Patch Manager that have not been rebooted after the patch installation. The status of these instances is NON_COMPLIANT.
--
-- * 'dpgsrrsInstancesWithFailedPatches' - The number of instances with patches from the patch baseline that failed to install.
--
-- * 'dpgsrrsInstancesWithInstalledPatches' - The number of instances with installed patches.
--
-- * 'dpgsrrsInstancesWithNotApplicablePatches' - The number of instances with patches that aren't applicable.
--
-- * 'dpgsrrsResponseStatus' - -- | The response status code.
describePatchGroupStateResponse ::
  -- | 'dpgsrrsResponseStatus'
  Int ->
  DescribePatchGroupStateResponse
describePatchGroupStateResponse pResponseStatus_ =
  DescribePatchGroupStateResponse'
    { _dpgsrrsInstancesWithInstalledOtherPatches =
        Nothing,
      _dpgsrrsInstancesWithUnreportedNotApplicablePatches =
        Nothing,
      _dpgsrrsInstancesWithInstalledRejectedPatches =
        Nothing,
      _dpgsrrsInstances = Nothing,
      _dpgsrrsInstancesWithMissingPatches =
        Nothing,
      _dpgsrrsInstancesWithInstalledPendingRebootPatches =
        Nothing,
      _dpgsrrsInstancesWithFailedPatches =
        Nothing,
      _dpgsrrsInstancesWithInstalledPatches =
        Nothing,
      _dpgsrrsInstancesWithNotApplicablePatches =
        Nothing,
      _dpgsrrsResponseStatus = pResponseStatus_
    }

-- | The number of instances with patches installed that aren't defined in the patch baseline.
dpgsrrsInstancesWithInstalledOtherPatches :: Lens' DescribePatchGroupStateResponse (Maybe Int)
dpgsrrsInstancesWithInstalledOtherPatches = lens _dpgsrrsInstancesWithInstalledOtherPatches (\s a -> s {_dpgsrrsInstancesWithInstalledOtherPatches = a})

-- | The number of instances with @NotApplicable@ patches beyond the supported limit, which are not reported by name to Systems Manager Inventory.
dpgsrrsInstancesWithUnreportedNotApplicablePatches :: Lens' DescribePatchGroupStateResponse (Maybe Int)
dpgsrrsInstancesWithUnreportedNotApplicablePatches = lens _dpgsrrsInstancesWithUnreportedNotApplicablePatches (\s a -> s {_dpgsrrsInstancesWithUnreportedNotApplicablePatches = a})

-- | The number of instances with patches installed that are specified in a RejectedPatches list. Patches with a status of /INSTALLED_REJECTED/ were typically installed before they were added to a RejectedPatches list.
dpgsrrsInstancesWithInstalledRejectedPatches :: Lens' DescribePatchGroupStateResponse (Maybe Int)
dpgsrrsInstancesWithInstalledRejectedPatches = lens _dpgsrrsInstancesWithInstalledRejectedPatches (\s a -> s {_dpgsrrsInstancesWithInstalledRejectedPatches = a})

-- | The number of instances in the patch group.
dpgsrrsInstances :: Lens' DescribePatchGroupStateResponse (Maybe Int)
dpgsrrsInstances = lens _dpgsrrsInstances (\s a -> s {_dpgsrrsInstances = a})

-- | The number of instances with missing patches from the patch baseline.
dpgsrrsInstancesWithMissingPatches :: Lens' DescribePatchGroupStateResponse (Maybe Int)
dpgsrrsInstancesWithMissingPatches = lens _dpgsrrsInstancesWithMissingPatches (\s a -> s {_dpgsrrsInstancesWithMissingPatches = a})

-- | The number of instances with patches installed by Patch Manager that have not been rebooted after the patch installation. The status of these instances is NON_COMPLIANT.
dpgsrrsInstancesWithInstalledPendingRebootPatches :: Lens' DescribePatchGroupStateResponse (Maybe Int)
dpgsrrsInstancesWithInstalledPendingRebootPatches = lens _dpgsrrsInstancesWithInstalledPendingRebootPatches (\s a -> s {_dpgsrrsInstancesWithInstalledPendingRebootPatches = a})

-- | The number of instances with patches from the patch baseline that failed to install.
dpgsrrsInstancesWithFailedPatches :: Lens' DescribePatchGroupStateResponse (Maybe Int)
dpgsrrsInstancesWithFailedPatches = lens _dpgsrrsInstancesWithFailedPatches (\s a -> s {_dpgsrrsInstancesWithFailedPatches = a})

-- | The number of instances with installed patches.
dpgsrrsInstancesWithInstalledPatches :: Lens' DescribePatchGroupStateResponse (Maybe Int)
dpgsrrsInstancesWithInstalledPatches = lens _dpgsrrsInstancesWithInstalledPatches (\s a -> s {_dpgsrrsInstancesWithInstalledPatches = a})

-- | The number of instances with patches that aren't applicable.
dpgsrrsInstancesWithNotApplicablePatches :: Lens' DescribePatchGroupStateResponse (Maybe Int)
dpgsrrsInstancesWithNotApplicablePatches = lens _dpgsrrsInstancesWithNotApplicablePatches (\s a -> s {_dpgsrrsInstancesWithNotApplicablePatches = a})

-- | -- | The response status code.
dpgsrrsResponseStatus :: Lens' DescribePatchGroupStateResponse Int
dpgsrrsResponseStatus = lens _dpgsrrsResponseStatus (\s a -> s {_dpgsrrsResponseStatus = a})

instance NFData DescribePatchGroupStateResponse
