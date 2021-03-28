{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.GetNamespace
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a namespace.
module Network.AWS.Route53AutoNaming.GetNamespace
    (
    -- * Creating a request
      GetNamespace (..)
    , mkGetNamespace
    -- ** Request lenses
    , gnId

    -- * Destructuring the response
    , GetNamespaceResponse (..)
    , mkGetNamespaceResponse
    -- ** Response lenses
    , gnrrsNamespace
    , gnrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.Route53AutoNaming.Types as Types

-- | /See:/ 'mkGetNamespace' smart constructor.
newtype GetNamespace = GetNamespace'
  { id :: Types.ResourceId
    -- ^ The ID of the namespace that you want to get information about.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetNamespace' value with any optional fields omitted.
mkGetNamespace
    :: Types.ResourceId -- ^ 'id'
    -> GetNamespace
mkGetNamespace id = GetNamespace'{id}

-- | The ID of the namespace that you want to get information about.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gnId :: Lens.Lens' GetNamespace Types.ResourceId
gnId = Lens.field @"id"
{-# INLINEABLE gnId #-}
{-# DEPRECATED id "Use generic-lens or generic-optics with 'id' instead"  #-}

instance Core.ToQuery GetNamespace where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders GetNamespace where
        toHeaders GetNamespace{..}
          = Core.pure
              ("X-Amz-Target", "Route53AutoNaming_v20170314.GetNamespace")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON GetNamespace where
        toJSON GetNamespace{..}
          = Core.object (Core.catMaybes [Core.Just ("Id" Core..= id)])

instance Core.AWSRequest GetNamespace where
        type Rs GetNamespace = GetNamespaceResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 GetNamespaceResponse' Core.<$>
                   (x Core..:? "Namespace") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkGetNamespaceResponse' smart constructor.
data GetNamespaceResponse = GetNamespaceResponse'
  { namespace :: Core.Maybe Types.Namespace
    -- ^ A complex type that contains information about the specified namespace.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'GetNamespaceResponse' value with any optional fields omitted.
mkGetNamespaceResponse
    :: Core.Int -- ^ 'responseStatus'
    -> GetNamespaceResponse
mkGetNamespaceResponse responseStatus
  = GetNamespaceResponse'{namespace = Core.Nothing, responseStatus}

-- | A complex type that contains information about the specified namespace.
--
-- /Note:/ Consider using 'namespace' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gnrrsNamespace :: Lens.Lens' GetNamespaceResponse (Core.Maybe Types.Namespace)
gnrrsNamespace = Lens.field @"namespace"
{-# INLINEABLE gnrrsNamespace #-}
{-# DEPRECATED namespace "Use generic-lens or generic-optics with 'namespace' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gnrrsResponseStatus :: Lens.Lens' GetNamespaceResponse Core.Int
gnrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE gnrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
