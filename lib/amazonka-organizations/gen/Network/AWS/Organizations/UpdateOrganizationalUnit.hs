{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Organizations.UpdateOrganizationalUnit
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Renames the specified organizational unit (OU). The ID and ARN don't change. The child OUs and accounts remain in place, and any attached policies of the OU remain attached.
--
-- This operation can be called only from the organization's management account.
module Network.AWS.Organizations.UpdateOrganizationalUnit
    (
    -- * Creating a request
      UpdateOrganizationalUnit (..)
    , mkUpdateOrganizationalUnit
    -- ** Request lenses
    , uouOrganizationalUnitId
    , uouName

    -- * Destructuring the response
    , UpdateOrganizationalUnitResponse (..)
    , mkUpdateOrganizationalUnitResponse
    -- ** Response lenses
    , uourrsOrganizationalUnit
    , uourrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Organizations.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdateOrganizationalUnit' smart constructor.
data UpdateOrganizationalUnit = UpdateOrganizationalUnit'
  { organizationalUnitId :: Types.OrganizationalUnitId
    -- ^ The unique identifier (ID) of the OU that you want to rename. You can get the ID from the 'ListOrganizationalUnitsForParent' operation.
--
-- The <http://wikipedia.org/wiki/regex regex pattern> for an organizational unit ID string requires "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the OU). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters or digits.
  , name :: Core.Maybe Types.OrganizationalUnitName
    -- ^ The new name that you want to assign to the OU.
--
-- The <http://wikipedia.org/wiki/regex regex pattern> that is used to validate this parameter is a string of any of the characters in the ASCII character range.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateOrganizationalUnit' value with any optional fields omitted.
mkUpdateOrganizationalUnit
    :: Types.OrganizationalUnitId -- ^ 'organizationalUnitId'
    -> UpdateOrganizationalUnit
mkUpdateOrganizationalUnit organizationalUnitId
  = UpdateOrganizationalUnit'{organizationalUnitId,
                              name = Core.Nothing}

-- | The unique identifier (ID) of the OU that you want to rename. You can get the ID from the 'ListOrganizationalUnitsForParent' operation.
--
-- The <http://wikipedia.org/wiki/regex regex pattern> for an organizational unit ID string requires "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the OU). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters or digits.
--
-- /Note:/ Consider using 'organizationalUnitId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uouOrganizationalUnitId :: Lens.Lens' UpdateOrganizationalUnit Types.OrganizationalUnitId
uouOrganizationalUnitId = Lens.field @"organizationalUnitId"
{-# INLINEABLE uouOrganizationalUnitId #-}
{-# DEPRECATED organizationalUnitId "Use generic-lens or generic-optics with 'organizationalUnitId' instead"  #-}

-- | The new name that you want to assign to the OU.
--
-- The <http://wikipedia.org/wiki/regex regex pattern> that is used to validate this parameter is a string of any of the characters in the ASCII character range.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uouName :: Lens.Lens' UpdateOrganizationalUnit (Core.Maybe Types.OrganizationalUnitName)
uouName = Lens.field @"name"
{-# INLINEABLE uouName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

instance Core.ToQuery UpdateOrganizationalUnit where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders UpdateOrganizationalUnit where
        toHeaders UpdateOrganizationalUnit{..}
          = Core.pure
              ("X-Amz-Target",
               "AWSOrganizationsV20161128.UpdateOrganizationalUnit")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON UpdateOrganizationalUnit where
        toJSON UpdateOrganizationalUnit{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("OrganizationalUnitId" Core..= organizationalUnitId),
                  ("Name" Core..=) Core.<$> name])

instance Core.AWSRequest UpdateOrganizationalUnit where
        type Rs UpdateOrganizationalUnit = UpdateOrganizationalUnitResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 UpdateOrganizationalUnitResponse' Core.<$>
                   (x Core..:? "OrganizationalUnit") Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkUpdateOrganizationalUnitResponse' smart constructor.
data UpdateOrganizationalUnitResponse = UpdateOrganizationalUnitResponse'
  { organizationalUnit :: Core.Maybe Types.OrganizationalUnit
    -- ^ A structure that contains the details about the specified OU, including its new name.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateOrganizationalUnitResponse' value with any optional fields omitted.
mkUpdateOrganizationalUnitResponse
    :: Core.Int -- ^ 'responseStatus'
    -> UpdateOrganizationalUnitResponse
mkUpdateOrganizationalUnitResponse responseStatus
  = UpdateOrganizationalUnitResponse'{organizationalUnit =
                                        Core.Nothing,
                                      responseStatus}

-- | A structure that contains the details about the specified OU, including its new name.
--
-- /Note:/ Consider using 'organizationalUnit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uourrsOrganizationalUnit :: Lens.Lens' UpdateOrganizationalUnitResponse (Core.Maybe Types.OrganizationalUnit)
uourrsOrganizationalUnit = Lens.field @"organizationalUnit"
{-# INLINEABLE uourrsOrganizationalUnit #-}
{-# DEPRECATED organizationalUnit "Use generic-lens or generic-optics with 'organizationalUnit' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uourrsResponseStatus :: Lens.Lens' UpdateOrganizationalUnitResponse Core.Int
uourrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE uourrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
